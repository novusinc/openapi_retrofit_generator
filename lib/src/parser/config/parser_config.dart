import 'package:openapi_retrofit_generator/src/config/custom_metadata_config.dart';

/// The configuration that the OpenApiParser uses
class ParserConfig {
  /// Creates a [ParserConfig].
  const ParserConfig(
    this.fileContent, {
    required this.isJson,
    this.name,
    this.defaultContentType = 'application/json',
    this.pathMethodName = false,
    this.mergeClients = false,
    this.skippedParameters = const <String>[],
    this.useXNullable = false,
    this.excludeTags = const <String>[],
    this.includeTags = const <String>[],
    this.defaultClient = 'api',
    this.customMetadata = const CustomMetadataConfig(),
  });

  /// Specification file content as [String]
  final String fileContent;

  /// Set `true` if your specification is json.
  /// Set `false` if yaml.
  final bool isJson;

  /// Optional. Set API name for folder and export file.
  /// If not specified, the file name is used.
  final String? name;

  /// DART ONLY
  /// Default content type for all requests and responses.
  ///
  /// If the content type does not match the default, generates:
  /// `@Headers(<String, String>{'Content-Type': 'PARSED CONTENT TYPE'})`
  final String defaultContentType;

  /// If `true`, use the endpoint path for the method name.
  /// if `false`, use `operationId`.
  final bool pathMethodName;

  /// Set `true` to merge all clients in single client.
  final bool mergeClients;

  /// List of parameter names that should skip during parsing
  final List<String> skippedParameters;

  /// Does the Schema use x-nullable to indicate nullable fields
  /// Only used for OpenApi v2
  final bool useXNullable;

  /// Optional. Set excluded tags.
  ///
  /// Endpoints with these tags will not be included in the generated clients.
  final List<String> excludeTags;

  /// Optional. Set included tags.
  ///
  /// If set, only endpoints with these tags will be included in the generated clients.
  /// **NOTE: This will override the [excludeTags] if set.**
  final List<String> includeTags;

  /// DART ONLY
  /// Optional. Default client name for endpoints without tags.
  ///
  /// defaults to 'api' which results in a client named `ApiClient` (with postfix) or `Api` (without postfix).
  final String defaultClient;

  /// Configuration for custom metadata field processing.
  ///
  /// When enabled, the parser will extract custom metadata fields from OpenAPI
  /// property definitions and store them for use by code generators.
  final CustomMetadataConfig customMetadata;
}
