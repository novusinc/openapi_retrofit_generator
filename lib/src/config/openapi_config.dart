import 'dart:io';

import 'package:args/args.dart';
import 'package:openapi_retrofit_generator/src/config/config_exception.dart';
import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';
import 'package:openapi_retrofit_generator/src/generator/config/generator_config.dart';
import 'package:openapi_retrofit_generator/src/generator/model/json_serializer.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:yaml/yaml.dart';

/// OpenAPI Generator Config
class OpenApiConfig {
  /// Creates a [OpenApiConfig].
  const OpenApiConfig({
    required this.outputDirectory,
    this.schemaPath,
    this.schemaUrl,
    this.name = 'api',
    this.jsonSerializer = JsonSerializer.jsonSerializable,
    this.rootClient = true,
    this.rootClientName = 'RestClient',
    this.clientPostfix,
    this.exportFile = false,
    this.putClientsInFolder = false,
    this.unknownEnumValue = true,
    this.markFilesAsGenerated = true,
    this.originalHttpResponse = false,
    this.defaultContentType = 'application/json',
    this.extrasParameterByDefault = false,
    this.dioOptionsParameterByDefault = false,
    this.pathMethodName = false,
    this.mergeClients = false,
    this.skippedParameters = const <String>[],
    this.generateValidator = false,
    this.useXNullable = true,
    this.fallbackUnion,
    this.sealedRefUnions = false,
    this.excludeTags = const <String>[],
    this.includeTags = const <String>[],
    this.defaultClient = 'api',
    this.mergeOutputs = false,
    this.includeIfNull = false,
    this.generateConverters = false,
    this.generateDefaults = false,
    this.converterHydratedModelPrefix,
    this.converterHydratedModelsDirectory = 'hydrated_models',
    this.modelSearchDirectories = const ['models', 'bridge_models'],
    this.customMetadata = const CustomMetadataConfig(),
    this.generateMergeMethod = true,
    this.generatePathConstants = false,
  });

  /// Internal constructor of [OpenApiConfig]
  const OpenApiConfig._({
    required this.outputDirectory,
    required this.schemaPath,
    required this.schemaUrl,
    required this.name,
    required this.jsonSerializer,
    required this.rootClient,
    required this.rootClientName,
    required this.clientPostfix,
    required this.exportFile,
    required this.putClientsInFolder,
    required this.unknownEnumValue,
    required this.markFilesAsGenerated,
    required this.originalHttpResponse,
    required this.defaultContentType,
    required this.extrasParameterByDefault,
    required this.dioOptionsParameterByDefault,
    required this.pathMethodName,
    required this.mergeClients,
    required this.skippedParameters,
    required this.generateValidator,
    required this.useXNullable,
    required this.excludeTags,
    required this.includeTags,
    required this.defaultClient,
    required this.mergeOutputs,
    required this.includeIfNull,
    required this.generateConverters,
    required this.generateDefaults,
    required this.sealedRefUnions,
    this.fallbackUnion,
    this.converterHydratedModelPrefix,
    this.converterHydratedModelsDirectory = 'hydrated_models',
    this.modelSearchDirectories = const ['models', 'bridge_models'],
    required this.customMetadata,
    required this.generateMergeMethod,
    this.generatePathConstants = false,
  });

  /// Creates a [OpenApiConfig] from [YamlMap].
  factory OpenApiConfig.fromYaml(
    YamlMap yamlMap, {
    bool isRootConfig = false,
    OpenApiConfig? rootConfig,
  }) {
    final schemaPath =
        yamlMap['schema_path']?.toString() ?? rootConfig?.schemaPath;

    final schemaUrl =
        yamlMap['schema_url']?.toString() ?? rootConfig?.schemaUrl;
    if (schemaUrl != null) {
      final uri = Uri.tryParse(schemaUrl);
      if (uri == null) {
        throw const ConfigException(
          "Config parameter 'schema_url' must be valid URL.",
        );
      }
    }

    if (!isRootConfig && schemaPath == null && schemaUrl == null) {
      throw const ConfigException(
        "Config parameters 'schema_path' or 'schema_url' are required.",
      );
    }

    var outputDirectory =
        yamlMap['output_directory']?.toString() ?? rootConfig?.outputDirectory;

    // Normalize: treat null and empty string the same
    final hasOutputDirectory =
        outputDirectory != null && outputDirectory.isNotEmpty;

    // For non-root configs (schemas), output_directory is required either locally or from root
    if (!isRootConfig && !hasOutputDirectory) {
      throw ConfigException(
        "Config parameter 'output_directory' for ${schemaPath ?? schemaUrl ?? 'schema'} was not found.\n"
        "Add the 'output_directory' parameter under 'openapi_generator:' or set it for each schema.",
      );
    }

    // For root configs with schemes, output_directory is optional (defaults to empty)
    outputDirectory ??= '';

    final rawName = yamlMap['name']?.toString();
    final name = rawName == null || rawName.isEmpty
        ? (schemaPath ?? schemaUrl ?? '').split('/').last.split('.').first
        : rawName;

    final defaultContentType =
        yamlMap['default_content_type'] as String? ??
        rootConfig?.defaultContentType;
    final extrasParameterByDefault =
        yamlMap['extras_parameter_by_default'] as bool? ??
        rootConfig?.extrasParameterByDefault;
    final dioOptionsParameterByDefault =
        yamlMap['dio_options_parameter_by_default'] as bool? ??
        rootConfig?.dioOptionsParameterByDefault;
    final pathMethodName =
        yamlMap['path_method_name'] as bool? ?? rootConfig?.pathMethodName;
    final mergeClients =
        yamlMap['merge_clients'] as bool? ?? rootConfig?.mergeClients;

    final rawSkippedParameters = yamlMap['skipped_parameters'] as YamlList?;
    List<String>? skippedParameters;
    if (rawSkippedParameters != null) {
      skippedParameters = [];
      for (final p in rawSkippedParameters) {
        if (p is! String) {
          throw const ConfigException(
            "Config parameter 'skipped_parameters' values must be List of String.",
          );
        }
        skippedParameters.add(p);
      }
    } else if (rootConfig?.skippedParameters != null) {
      skippedParameters = List.from(rootConfig!.skippedParameters);
    }

    JsonSerializer? jsonSerializer;
    final rawJsonSerializer = yamlMap['json_serializer']?.toString();
    if (rawJsonSerializer != null) {
      jsonSerializer = JsonSerializer.fromString(rawJsonSerializer);
    } else if (rootConfig?.jsonSerializer != null) {
      jsonSerializer = rootConfig!.jsonSerializer;
    }

    final rootClient =
        yamlMap['root_client'] as bool? ?? rootConfig?.rootClient;
    final rootClientName =
        yamlMap['root_client_name'] as String? ?? rootConfig?.rootClientName;
    final clientPostfix =
        yamlMap['client_postfix'] as String? ?? rootConfig?.clientPostfix;
    final exportFile =
        yamlMap['export_file'] as bool? ?? rootConfig?.exportFile;
    final putClientsInFolder =
        yamlMap['put_clients_in_folder'] as bool? ??
        rootConfig?.putClientsInFolder;
    final unknownEnumValue =
        yamlMap['unknown_enum_value'] as bool? ?? rootConfig?.unknownEnumValue;
    final markFilesAsGenerated =
        yamlMap['mark_files_as_generated'] as bool? ??
        rootConfig?.markFilesAsGenerated;
    final originalHttpResponse =
        yamlMap['original_http_response'] as bool? ??
        rootConfig?.originalHttpResponse;

    final generateValidator =
        yamlMap['generate_validator'] as bool? ?? rootConfig?.generateValidator;

    final useXNullable =
        yamlMap['use_x_nullable'] as bool? ?? rootConfig?.useXNullable;

    final fallbackUnion =
        yamlMap['fallback_union'] as String? ?? rootConfig?.fallbackUnion;

    final sealedRefUnions =
        yamlMap['sealed_ref_unions'] as bool? ?? rootConfig?.sealedRefUnions;

    final excludedTagsYaml = yamlMap['exclude_tags'] as YamlList?;
    List<String>? excludedTags;
    if (excludedTagsYaml != null) {
      excludedTags = [];
      for (final t in excludedTagsYaml) {
        if (t is! String) {
          throw const ConfigException(
            "Config parameter 'exclude_tags' values must be List of String.",
          );
        }
        excludedTags.add(t);
      }
    } else if (rootConfig?.excludeTags != null) {
      excludedTags = List.from(rootConfig!.excludeTags);
    }

    final includedTagsYaml = yamlMap['include_tags'] as YamlList?;
    List<String>? includedTags;
    if (includedTagsYaml != null) {
      includedTags = [];
      for (final t in includedTagsYaml) {
        if (t is! String) {
          throw const ConfigException(
            "Config parameter 'include_tags' values must be List of String.",
          );
        }
        includedTags.add(t);
      }
    } else if (rootConfig?.includeTags != null) {
      includedTags = List.from(rootConfig!.includeTags);
    }

    final defaultClient =
        yamlMap['default_client'] as String? ?? rootConfig?.defaultClient;

    final mergeOutputs =
        yamlMap['merge_outputs'] as bool? ?? rootConfig?.mergeOutputs;

    final includeIfNull =
        yamlMap['include_if_null'] as bool? ?? rootConfig?.includeIfNull;

    final generateConverters =
        yamlMap['generate_converters'] as bool? ?? rootConfig?.generateConverters;
    
    final generateDefaults =
        yamlMap['generate_defaults'] as bool? ?? rootConfig?.generateDefaults;
    
    final generateMergeMethod =
        yamlMap['generate_merge_method'] as bool? ?? rootConfig?.generateMergeMethod;

    final generatePathConstants =
        yamlMap['generate_path_constants'] as bool? ?? rootConfig?.generatePathConstants;

    final converterHydratedModelPrefix =
        yamlMap['converter_hydrated_model_prefix'] as String? ?? rootConfig?.converterHydratedModelPrefix;
    
    final converterHydratedModelsDirectory =
        yamlMap['converter_hydrated_models_directory'] as String? ?? rootConfig?.converterHydratedModelsDirectory ?? 'hydrated_models';
    
    final rawModelSearchDirectories = yamlMap['model_search_directories'] as YamlList?;
    List<String>? modelSearchDirectories;
    if (rawModelSearchDirectories != null) {
      modelSearchDirectories = [];
      for (final dir in rawModelSearchDirectories) {
        if (dir is! String) {
          throw const ConfigException(
            "Config parameter 'model_search_directories' values must be List of String.",
          );
        }
        modelSearchDirectories.add(dir);
      }
    } else {
      modelSearchDirectories = rootConfig?.modelSearchDirectories;
    }

    // Parse custom metadata configuration
    final customMetadataYaml = yamlMap['custom_metadata'] as YamlMap?;
    final customMetadata = customMetadataYaml != null
        ? CustomMetadataConfig.fromYaml(customMetadataYaml)
        : (rootConfig?.customMetadata ?? const CustomMetadataConfig());

    if (((generateConverters ?? false) || customMetadata.isActive) &&
        (converterHydratedModelPrefix == null ||
            converterHydratedModelPrefix.trim().isEmpty)) {
      throw const ConfigException(
        "Config parameter 'converter_hydrated_model_prefix' is required when "
        "'generate_converters' or 'custom_metadata' is enabled.",
      );
    }

    // Default config
    final dc = OpenApiConfig(name: name, outputDirectory: outputDirectory);

    // sealed_ref_unions only affects the freezed serializer. Warn (instead of
    // failing) so a shared config can enable it while some schemas use another
    // serializer; the generator ignores the flag for non-freezed output.
    final effectiveJsonSerializer = jsonSerializer ?? dc.jsonSerializer;
    final effectiveSealedRefUnions = sealedRefUnions ?? dc.sealedRefUnions;
    if (effectiveSealedRefUnions &&
        effectiveJsonSerializer != JsonSerializer.freezed) {
      stderr.writeln(
        "Warning: 'sealed_ref_unions' is only supported with "
        "'json_serializer: freezed' and is ignored for "
        "'${effectiveJsonSerializer.name}'.",
      );
    }
    if (effectiveSealedRefUnions && (mergeOutputs ?? dc.mergeOutputs)) {
      throw const ConfigException(
        "Config parameters 'sealed_ref_unions' and 'merge_outputs' cannot be "
        'combined: union family files rely on per-file part directives.',
      );
    }

    return OpenApiConfig._(
      schemaPath: schemaPath,
      schemaUrl: schemaUrl,
      outputDirectory: outputDirectory,
      name: name,
      pathMethodName: pathMethodName ?? dc.pathMethodName,
      defaultContentType: defaultContentType ?? dc.defaultContentType,
      extrasParameterByDefault:
          extrasParameterByDefault ?? dc.extrasParameterByDefault,
      dioOptionsParameterByDefault:
          dioOptionsParameterByDefault ?? dc.dioOptionsParameterByDefault,
      mergeClients: mergeClients ?? dc.mergeClients,
      skippedParameters: skippedParameters ?? dc.skippedParameters,
      exportFile: exportFile ?? dc.exportFile,
      jsonSerializer: jsonSerializer ?? dc.jsonSerializer,
      rootClient: rootClient ?? dc.rootClient,
      rootClientName: rootClientName ?? dc.rootClientName,
      clientPostfix: clientPostfix?.trim() ?? dc.clientPostfix,
      putClientsInFolder: putClientsInFolder ?? dc.putClientsInFolder,
      unknownEnumValue: unknownEnumValue ?? dc.unknownEnumValue,
      markFilesAsGenerated: markFilesAsGenerated ?? dc.markFilesAsGenerated,
      originalHttpResponse: originalHttpResponse ?? dc.originalHttpResponse,
      generateValidator: generateValidator ?? dc.generateValidator,
      useXNullable: useXNullable ?? dc.useXNullable,
      fallbackUnion: fallbackUnion,
      sealedRefUnions: effectiveSealedRefUnions,
      mergeOutputs: mergeOutputs ?? dc.mergeOutputs,
      excludeTags: excludedTags ?? dc.excludeTags,
      includeTags: includedTags ?? dc.includeTags,
      defaultClient: defaultClient ?? dc.defaultClient,
      includeIfNull: includeIfNull ?? dc.includeIfNull,
      generateConverters: generateConverters ?? dc.generateConverters,
      generateDefaults: generateDefaults ?? dc.generateDefaults,
      converterHydratedModelPrefix: converterHydratedModelPrefix,
      converterHydratedModelsDirectory: converterHydratedModelsDirectory ?? dc.converterHydratedModelsDirectory,
      modelSearchDirectories: modelSearchDirectories ?? dc.modelSearchDirectories,
      customMetadata: customMetadata,
      generateMergeMethod: generateMergeMethod ?? dc.generateMergeMethod,
      generatePathConstants: generatePathConstants ?? dc.generatePathConstants,
    );
  }

  /// Creates a [OpenApiConfig] from [YamlMap] with CLI [argResults] overrides.
  factory OpenApiConfig.fromYamlWithOverrides(
    YamlMap yamlMap,
    ArgResults? argResults, {
    bool isRootConfig = false,
    OpenApiConfig? rootConfig,
  }) {
    // Apply CLI overrides to YAML map
    final mergedConfig = Map<String, dynamic>.from(yamlMap);

    if (argResults != null) {
      for (final option in argResults.options) {
        mergedConfig[option] = argResults[option];
      }
    }

    // Create YAML map from merged config
    final mergedYamlMap = YamlMap.wrap(mergedConfig);

    // Use existing fromYaml method with merged configuration
    return OpenApiConfig.fromYaml(
      mergedYamlMap,
      isRootConfig: isRootConfig,
      rootConfig: rootConfig,
    );
  }

  /// Path to local OpenAPI schema file.
  ///
  /// Supports both JSON (.json) and YAML (.yaml, .yml) formats.
  /// Can be absolute or relative to the config file location.
  ///
  /// At least one of [schemaPath] or [schemaUrl] must be provided.
  ///
  /// Example: `schemes/openapi.json`, `../shared/api.yaml`
  final String? schemaPath;

  /// URL to remote OpenAPI schema.
  ///
  /// Alternative to [schemaPath] - fetches schema from a web endpoint.
  /// Must be a valid HTTP/HTTPS URL.
  ///
  /// At least one of [schemaPath] or [schemaUrl] must be provided.
  ///
  /// Example: `https://api.example.com/swagger.json`
  final String? schemaUrl;

  /// API identifier used for naming folders and export files.
  ///
  /// If not specified, extracted from schema file name
  /// (e.g., `openapi.json` -> `openapi`).
  ///
  /// Used in:
  /// - Export file name: `<name>.dart`
  /// - Merged output file: `<name>.dart` (when [mergeOutputs] is true)
  /// - API folder organization
  ///
  /// Default: extracted from [schemaPath] or [schemaUrl]
  final String name;

  /// Directory where all generated files will be placed.
  ///
  /// **Required.** Can be absolute or relative path.
  /// All clients, models, and export files will be generated here.
  ///
  /// Example: `lib/api`, `lib/src/generated`
  final String outputDirectory;

  /// JSON serialization library to use for model generation.
  ///
  /// Available options:
  /// - [JsonSerializer.jsonSerializable]: Standard Dart JSON serialization (default)
  ///   Generates toJson/fromJson methods with @JsonSerializable annotation
  /// - [JsonSerializer.freezed]: Immutable data classes with Freezed package
  ///   Generates union types, copyWith, equality, toString
  /// - [JsonSerializer.dartMappable]: Type-safe mapping with dart_mappable package
  ///   Fast, code-generated mapping with type safety
  ///
  /// Default: [JsonSerializer.jsonSerializable]
  final JsonSerializer jsonSerializer;

  /// Suffix appended to all client class names.
  ///
  /// Examples:
  /// - `Client` -> `UserClient`, `PostClient`
  /// - `Api` -> `UserApi`, `PostApi`
  /// - `null` -> `User`, `Post` (no suffix)
  ///
  /// Default: null (no suffix)
  final String? clientPostfix;

  /// Generate a root client class that aggregates all API clients.
  ///
  /// When true, creates an interface and implementation with all clients as properties.
  ///
  /// Example: RestClient contains userClient, postClient, etc.
  ///
  /// Default: true
  final bool rootClient;

  /// Name for the generated root client class.
  ///
  /// Only used when [rootClient] is true.
  ///
  /// Default: `RestClient`
  final String rootClientName;

  /// Generate a barrel export file.
  ///
  /// When true, exports all generated clients and models from a single file.
  /// Simplifies imports: `import 'package:app/api.dart';`
  ///
  /// Only applies when [mergeOutputs] is false.
  ///
  /// Default: false
  final bool exportFile;

  /// Place all client files in a dedicated `clients/` subdirectory.
  ///
  /// When true: `output_directory/clients/user_client.dart`
  /// When false: `output_directory/user_client.dart`
  ///
  /// Default: false
  final bool putClientsInFolder;

  /// Add an `unknown` value to all generated enums.
  ///
  /// Provides backwards compatibility when server adds new enum values.
  /// Generated enum includes: `...<values>, unknown` (for unmapped values).
  ///
  /// Use case: Prevents deserialization errors on unknown enum values.
  ///
  /// Default: true
  final bool unknownEnumValue;

  /// Add generation comment to generated files.
  ///
  /// When true: Files start with `// Generated code - do not modify` comment
  /// When false: No generation comment added
  ///
  /// Default: true
  final bool markFilesAsGenerated;

  /// Wrap all response types with `HttpResponse<T>`.
  ///
  /// When true: Returns `HttpResponse<T>` containing response + headers + status
  /// When false: Returns only the response body (T)
  ///
  /// Use case: Access response headers, status codes, etc.
  ///
  /// Example: `HttpResponse<User>` instead of `User`
  ///
  /// Default: false
  final bool originalHttpResponse;

  /// Default Content-Type header for all requests.
  ///
  /// When an endpoint's content type differs from this, a @Headers annotation is added.
  ///
  /// Common values: `application/json`, `application/x-www-form-urlencoded`
  ///
  /// If the content type does not match the default, generates:
  /// `@Headers(<String, String>{'Content-Type': 'PARSED CONTENT TYPE'})`
  ///
  /// Default: `application/json`
  final String defaultContentType;

  /// Add `@Extras()` parameter to all generated methods.
  ///
  /// Enables passing custom data through Dio interceptors.
  /// Requires retrofit >=4.1.0.
  ///
  /// Generated code:
  /// ```dart
  /// @POST('/path/')
  /// Future<T> method({@Extras() Map<String, dynamic>? extras});
  /// ```
  ///
  /// Use case: Pass request-specific metadata to interceptors.
  ///
  /// Default: false
  final bool extrasParameterByDefault;

  /// Add `@DioOptions()` parameter to all generated methods.
  ///
  /// Allows per-request Dio configuration override.
  ///
  /// Generated code:
  /// ```dart
  /// @POST('/path/')
  /// Future<T> method({@DioOptions() RequestOptions? options});
  /// ```
  ///
  /// Use case: Override timeout, headers, etc. per request.
  ///
  /// Default: false
  final bool dioOptionsParameterByDefault;

  /// Determines how API method names are generated.
  ///
  /// When true: Use endpoint path for method name (e.g., `/users/{id}` -> `usersId`)
  /// When false: Use operationId from OpenAPI spec
  ///
  /// Recommendation: false (operationId is more semantic)
  ///
  /// Default: false
  final bool pathMethodName;

  /// Combine all API clients into a single client class.
  ///
  /// When true: All endpoints merged into one client (e.g., ApiClient)
  /// When false: Separate client per tag (e.g., UserClient, PostClient)
  ///
  /// Use case: Simple APIs or preference for monolithic client.
  ///
  /// Default: false
  final bool mergeClients;

  /// List of parameter names to exclude from generation.
  ///
  /// Parameters with these exact names (case-sensitive) will be skipped.
  ///
  /// Use case: Skip internal headers, auth tokens handled elsewhere.
  ///
  /// Example: `['X-Request-ID', 'Authorization', 'X-Custom-Header']`
  ///
  /// Default: [] (no exclusions)
  final List<String> skippedParameters;

  /// Generate validator function for Freezed classes.
  ///
  /// When true: Adds validation logic to Freezed data classes.
  /// Only applicable with [jsonSerializer] set to [JsonSerializer.freezed].
  ///
  /// Default: false
  final bool generateValidator;

  /// Respect `x-nullable` OpenAPI extension.
  ///
  /// When true: Fields marked with `x-nullable: true` become nullable (Type?)
  /// When false: x-nullable annotation is ignored
  ///
  /// Use case: OpenAPI 2.0 specs using x-nullable for nullability.
  ///
  /// Default: true
  final bool useXNullable;

  /// Fallback constructor name for discriminated unions.
  ///
  /// When set, adds fallbackUnion parameter to @Freezed annotation.
  /// Handles unknown discriminator values in oneOf/anyOf unions.
  ///
  /// Example values: `unknown`, `undefined`, `fallback`
  ///
  /// Generated: `@Freezed(fallbackUnion: 'unknown')`
  ///
  /// Use case: Graceful handling of new union variants from server.
  ///
  /// Only applicable with [jsonSerializer] set to [JsonSerializer.freezed]
  /// or [JsonSerializer.dartMappable].
  ///
  /// Default: null (no fallback union)
  final String? fallbackUnion;

  /// Emit discriminated all-`$ref` unions as plain `sealed` supertypes over the
  /// existing referenced leaf classes instead of cloning every variant's fields
  /// into Freezed union factories.
  ///
  /// When true, each eligible union (discriminated oneOf/anyOf whose mapping
  /// refs are all existing top-level non-union components) is generated as:
  /// - a plain `sealed class X` with redirecting factory constructors per
  ///   variant (`X.human(...) = HumanLeaf`), a hand-rolled `fromJson` switch on
  ///   the discriminator, and abstract getters for fields common to all leaves
  /// - the leaf classes themselves (still Freezed) implementing the supertype,
  ///   merged into ONE file per union family (Dart requires all subtypes of a
  ///   sealed class in the same library)
  /// - a `XUnknown` fallback carrying the raw JSON for unknown discriminator
  ///   values (supersedes [fallbackUnion] for eligible unions)
  /// - `copyWith`/`map`-style compatibility extensions on the supertype
  ///
  /// Ineligible unions (inline variants, missing refs, undiscriminated) keep
  /// the legacy clone emission.
  ///
  /// Only applicable with [jsonSerializer] set to [JsonSerializer.freezed];
  /// ignored (with a warning) for other serializers. Incompatible with
  /// [mergeOutputs].
  ///
  /// Default: false
  final bool sealedRefUnions;

  /// Exclude endpoints with specific OpenAPI tags.
  ///
  /// Endpoints tagged with these values will NOT be generated.
  ///
  /// Example: `['internal', 'deprecated', 'admin']`
  ///
  /// Note: Overridden by [includeTags] if both are set.
  ///
  /// Default: [] (no exclusions)
  final List<String> excludeTags;

  /// Include ONLY endpoints with specific OpenAPI tags.
  ///
  /// When set, only endpoints with these tags are generated.
  ///
  /// Example: `['public', 'v2']`
  ///
  /// **Note: This OVERRIDES [excludeTags] - includeTags takes precedence.**
  ///
  /// Default: [] (include all)
  final List<String> includeTags;

  /// Default client name for endpoints without any tags.
  ///
  /// Example: `api` -> `ApiClient` (with postfix) or `Api` (without), `misc` -> `MiscClient`
  ///
  /// Default: `api`
  final String defaultClient;

  /// Merge all generated code into a single output file.
  ///
  /// When true: All clients + models in one file (`<name>.dart`)
  /// When false: Separate files for each client and model
  ///
  /// Use case: Required for build_runner (1-to-1 input/output mapping).
  ///
  /// Default: false
  final bool mergeOutputs;

  /// Generate `@JsonKey(includeIfNull: ...)` annotations for nullable fields.
  ///
  /// When true: Nullable fields include includeIfNull in @JsonKey annotation
  /// When false: includeIfNull annotations are not generated
  ///
  /// Affects JSON serialization behavior for null values.
  ///
  /// Default: false
  final bool includeIfNull;

  /// Generate converter classes for Db* prefixed models.
  ///
  /// When true: Generates a converter class alongside each Db* model
  /// that handles transformation between hydrated models and database models.
  /// All fields are automatically included - no manual field mapping required.
  ///
  /// Default: false
  final bool generateConverters;

  /// Generate default value constants for Db* prefixed models.
  ///
  /// When true: Generates a defaults file with static constants for each field
  /// that has a default value defined in the OpenAPI schema.
  ///
  /// Files are generated in the `defaults/` folder as `<model>_defaults.dart`
  ///
  /// Default: false
  final bool generateDefaults;

  /// Import path for hydrated models used in converters.
  ///
  /// Example: 'package:stream_chat/stream_chat.dart'
  ///
  /// Default: null (generates TODO comment)
  final String? converterHydratedModelPrefix;

  /// Directory path where hydrated model files are located.
  ///
  /// Relative to [outputDirectory]. Generator looks for hydrated models here
  /// to extract field information for converters.
  ///
  /// Example: 'hydrated_models', '../hydrated', 'models/hydrated'
  ///
  /// Default: 'hydrated_models'
  final String converterHydratedModelsDirectory;

  /// Subdirectories within models base path to search for type definitions (enums, classes).
  ///
  /// When detecting enums or checking type definitions, the generator searches
  /// in these subdirectories under the models base path.
  ///
  /// Example: If using 'models' and 'bridge_models', the generator will search:
  /// - packages/my_models/lib/src/models/
  /// - packages/my_models/lib/src/bridge_models/
  ///
  /// Can be customized in openapi_generator.yaml:
  /// ```yaml
  /// model_search_directories:
  ///   - models
  ///   - bridge_models
  ///   - other_models
  /// ```
  ///
  /// Default: ['models', 'bridge_models']
  final List<String> modelSearchDirectories;

  /// Configuration for custom metadata field processing.
  ///
  /// When enabled, the generator will look for custom metadata fields in OpenAPI
  /// property definitions and generate corresponding annotations in the output code.
  ///
  /// Example configuration:
  /// ```yaml
  /// custom_metadata:
  ///   enabled: true
  ///   fields:
  ///     - name: auto_generated
  ///       annotation: '@AutoGenerated()'
  ///     - name: immutable
  ///       annotation: '@Immutable()'
  /// ```
  ///
  /// Supports both x- prefixed and non-prefixed field names.
  ///
  /// Default: CustomMetadataConfig() (disabled with no fields)
  final CustomMetadataConfig customMetadata;

  /// Generate a `merge()` method for DTO classes.
  ///
  /// When true: Adds a `merge()` method to generated DTO classes that creates
  /// a new instance by copying all fields from another instance using `copyWith()`.
  ///
  /// **Serializer-specific behavior:**
  /// - [JsonSerializer.freezed]: We generate the `merge()` method in the class
  ///   body using Freezed's `copyWith()`.
  /// - [JsonSerializer.dartMappable]: We generate the `merge()` method using
  ///   dart_mappable's `copyWith()`.
  /// - [JsonSerializer.jsonSerializable]: Not supported because json_serializable
  ///   does not generate `copyWith` methods.
  ///
  /// Example generated code:
  /// ```dart
  /// Message merge(Message other) {
  ///   return copyWith(
  ///     id: other.id,
  ///     text: other.text,
  ///     // ... all fields
  ///   );
  /// }
  /// ```
  ///
  /// Default: true
  final bool generateMergeMethod;

  /// Generate `static const` path constants for each endpoint on the client class.
  ///
  /// When true, each endpoint's route is exposed as a named constant so callers
  /// can reference paths without duplicating the strings. Constants are named
  /// `<methodName>Path` and the `@POST`/`@GET`/… annotation references the
  /// constant instead of a string literal.
  ///
  /// Example config:
  /// ```yaml
  /// openapi_generator:
  ///   generate_path_constants: true
  /// ```
  ///
  /// Default: false
  final bool generatePathConstants;

  /// Convert [OpenApiConfig] to [GeneratorConfig]
  GeneratorConfig toGeneratorConfig() {
    return GeneratorConfig(
      name: name,
      outputDirectory: outputDirectory,
      jsonSerializer: jsonSerializer,
      defaultContentType: defaultContentType,
      extrasParameterByDefault: extrasParameterByDefault,
      dioOptionsParameterByDefault: dioOptionsParameterByDefault,
      rootClient: rootClient,
      rootClientName: rootClientName,
      clientPostfix: clientPostfix,
      exportFile: exportFile,
      putClientsInFolder: putClientsInFolder,
      unknownEnumValue: unknownEnumValue,
      markFilesAsGenerated: markFilesAsGenerated,
      originalHttpResponse: originalHttpResponse,
      generateValidator: generateValidator,
      fallbackUnion: fallbackUnion,
      sealedRefUnions: sealedRefUnions,
      mergeOutputs: mergeOutputs,
      includeIfNull: includeIfNull,
      generateConverters: generateConverters,
      generateDefaults: generateDefaults,
      converterHydratedModelPrefix: converterHydratedModelPrefix,
      converterHydratedModelsDirectory: converterHydratedModelsDirectory,
      modelSearchDirectories: modelSearchDirectories,
      customMetadata: customMetadata,
      generateMergeMethod: generateMergeMethod,
      generatePathConstants: generatePathConstants,
    );
  }

  /// Convert [OpenApiConfig] to [ParserConfig]
  ParserConfig toParserConfig({
    required String fileContent,
    required bool isJson,
  }) {
    return ParserConfig(
      fileContent,
      isJson: isJson,
      name: name,
      defaultContentType: defaultContentType,
      pathMethodName: pathMethodName,
      mergeClients: mergeClients,
      skippedParameters: skippedParameters,
      useXNullable: useXNullable,
      excludeTags: excludeTags,
      includeTags: includeTags,
      defaultClient: defaultClient,
      customMetadata: customMetadata,
    );
  }
}
