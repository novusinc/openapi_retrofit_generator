import 'package:openapi_retrofit_generator/src/generator/config/generator_config.dart';
import 'package:openapi_retrofit_generator/src/generator/generator/fill_controller.dart';
import 'package:openapi_retrofit_generator/src/parser/openapi_parser_core.dart';
import 'package:test/test.dart';

void main() {
  group('Empty rest client', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'Some',
        imports: {},
        requests: [],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'some_client.g.dart';

@RestApi()
abstract class SomeClient {
  factory SomeClient(Dio dio, {String? baseUrl}) = _SomeClient;
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Empty rest client with put clients in folder', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'Some',
        imports: {},
        requests: [],
      );
      final fillController = FillController(
        config: const GeneratorConfig(
          name: '',
          outputDirectory: '.',
          putClientsInFolder: true,
        ),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'some_client.g.dart';

@RestApi()
abstract class SomeClient {
  factory SomeClient(Dio dio, {String? baseUrl}) = _SomeClient;
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Client postfix', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [],
      );
      final fillController = FillController(
        config: const GeneratorConfig(
          name: '',
          outputDirectory: '.',
          clientPostfix: 'Api',
        ),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_api.g.dart';

@RestApi()
abstract class ClassNameApi {
  factory ClassNameApi(Dio dio, {String? baseUrl}) = _ClassNameApi;
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Empty client postfix', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'Some',
        imports: {},
        requests: [],
      );
      final fillController = FillController(
        config: const GeneratorConfig(
          name: '',
          outputDirectory: '.',
          clientPostfix: '',
        ),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'some.g.dart';

@RestApi()
abstract class Some {
  factory Some(Dio dio, {String? baseUrl}) = _Some;
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Imports', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {
          'camelClass',
          'snake_class',
          'kebab-class',
          'PascalClass',
          'Space class',
        },
        requests: [],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/camel_class.dart';
import '../models/snake_class.dart';
import '../models/kebab_class.dart';
import '../models/pascal_class.dart';
import '../models/space_class.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('One empty request', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/',
            returnType: null,
            parameters: [],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/')
  Future<void> getRequest();
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('All possible type of requests', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'postRequest',
            requestType: HttpRequestType.post,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'putRequest',
            requestType: HttpRequestType.put,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'headRequest',
            requestType: HttpRequestType.head,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'deleteRequest',
            requestType: HttpRequestType.delete,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'patchRequest',
            requestType: HttpRequestType.patch,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'connectRequest',
            requestType: HttpRequestType.connect,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'optionsRequest',
            requestType: HttpRequestType.options,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'traceRequest',
            requestType: HttpRequestType.trace,
            route: '/',
            returnType: null,
            parameters: [],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/')
  Future<void> getRequest();

  @POST('/')
  Future<void> postRequest();

  @PUT('/')
  Future<void> putRequest();

  @HEAD('/')
  Future<void> headRequest();

  @DELETE('/')
  Future<void> deleteRequest();

  @PATCH('/')
  Future<void> patchRequest();

  @CONNECT('/')
  Future<void> connectRequest();

  @OPTIONS('/')
  Future<void> optionsRequest();

  @TRACE('/')
  Future<void> traceRequest();
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Returned type', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/',
            returnType: null,
            parameters: [],
          ),
          UniversalRequest(
            name: 'getStringRequest',
            requestType: HttpRequestType.get,
            route: '/string',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [],
          ),
          UniversalRequest(
            name: 'getBoolRequest',
            requestType: HttpRequestType.get,
            route: '/boolean',
            returnType: UniversalType(type: 'boolean', isRequired: true),
            parameters: [],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/')
  Future<void> getRequest();

  @GET('/string')
  Future<String> getStringRequest();

  @GET('/boolean')
  Future<bool> getBoolRequest();
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Array type', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/',
            returnType: null,
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [UniversalCollections.list],
                  name: 'list1',
                  isRequired: true,
                ),
                name: 'list1',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.body,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.list,
                  ],
                  name: 'list2',
                  isRequired: true,
                ),
              ),
            ],
          ),
          UniversalRequest(
            name: 'listOfList',
            requestType: HttpRequestType.get,
            route: '/list-of-list',
            returnType: UniversalType(
              type: 'string',
              wrappingCollections: [
                UniversalCollections.list,
                UniversalCollections.list,
              ],
              isRequired: true,
            ),
            parameters: [],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/')
  Future<void> getRequest({
    @Query('list1') required List<String> list1,
    @Body() required List<List<List<String>>> list2,
  });

  @GET('/list-of-list')
  Future<List<List<String>>> listOfList();
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Single parameter', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'alex',
                  isRequired: true,
                ),
                name: 'name',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/')
  Future<String> getRequest({
    @Query('name') required String alex,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('All request types of parameter except extras type', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/{id}',
            returnType: null,
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.header,
                type: UniversalType(
                  type: 'string',
                  name: 'token',
                  isRequired: true,
                ),
                name: 'Authorization',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'alex',
                  isRequired: true,
                ),
                name: 'name',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.path,
                type: UniversalType(type: 'int', name: 'id', isRequired: true),
                name: 'id',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.body,
                type: UniversalType(
                  type: 'Another',
                  name: 'another',
                  isRequired: true,
                ),
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/{id}')
  Future<void> getRequest({
    @Header('Authorization') required String token,
    @Query('name') required String alex,
    @Path('id') required int id,
    @Body() required Another another,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Multipart', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {'AnotherFile'},
        requests: [
          UniversalRequest(
            name: 'sendMultiPart',
            requestType: HttpRequestType.post,
            route: '/send',
            returnType: null,
            contentType: 'multipart/form-data',
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.header,
                type: UniversalType(
                  type: 'string',
                  name: 'token',
                  isRequired: true,
                ),
                name: 'Authorization',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'string',
                  name: 'alex',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'name',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'string',
                  format: 'binary',
                  name: 'file',
                  isRequired: true,
                ),
                name: 'file',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'file',
                  name: 'secondFile',
                  isRequired: true,
                ),
                name: 'file2',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'boolean',
                  name: 'parsed',
                  isRequired: true,
                ),
                name: 'parsed-if',
              ),
            ],
          ),
          UniversalRequest(
            name: 'singleEntity',
            requestType: HttpRequestType.post,
            route: '/single',
            returnType: UniversalType(type: 'boolean', isRequired: true),
            contentType: 'multipart/form-data',
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.body,
                type: UniversalType(
                  type: 'AnotherFile',
                  name: 'file',
                  isRequired: true,
                ),
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'dart:convert';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/another_file.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @MultiPart()
  @POST('/send')
  Future<void> sendMultiPart({
    @Header('Authorization') required String token,
    @Part(name: 'file') required MultipartFile file,
    @Part(name: 'file2') required MultipartFile secondFile,
    @Part(name: 'parsed-if') required bool parsed,
    @Part(name: 'name') String? alex,
  });

  @MultiPart()
  @POST('/single')
  Future<bool> singleEntity({
    @Body() required AnotherFile file,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });

    test('dart + retrofit with multipart files', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {'AnotherFile'},
        requests: [
          UniversalRequest(
            name: 'sendMultiPart',
            requestType: HttpRequestType.post,
            route: '/send',
            returnType: null,
            contentType: 'multipart/form-data',
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.header,
                type: UniversalType(
                  type: 'string',
                  name: 'token',
                  isRequired: true,
                ),
                name: 'Authorization',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'string',
                  name: 'alex',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'name',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'string',
                  format: 'binary',
                  name: 'file',
                  isRequired: true,
                ),
                name: 'file',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'file',
                  name: 'secondFile',
                  isRequired: true,
                ),
                name: 'file2',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'file',
                  name: 'aListOfFiles',
                  isRequired: true,
                  wrappingCollections: [UniversalCollections.list],
                ),
                name: 'file2',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.part,
                type: UniversalType(
                  type: 'boolean',
                  name: 'parsed',
                  isRequired: true,
                ),
                name: 'parsed-if',
              ),
            ],
          ),
          UniversalRequest(
            name: 'singleEntity',
            requestType: HttpRequestType.post,
            route: '/single',
            returnType: UniversalType(type: 'boolean', isRequired: true),
            contentType: 'multipart/form-data',
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.body,
                type: UniversalType(
                  type: 'AnotherFile',
                  name: 'file',
                  isRequired: true,
                ),
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'dart:convert';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/another_file.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @MultiPart()
  @POST('/send')
  Future<void> sendMultiPart({
    @Header('Authorization') required String token,
    @Part(name: 'file') required MultipartFile file,
    @Part(name: 'file2') required MultipartFile secondFile,
    @Part(name: 'file2') required List<MultipartFile> aListOfFiles,
    @Part(name: 'parsed-if') required bool parsed,
    @Part(name: 'name') String? alex,
  });

  @MultiPart()
  @POST('/single')
  Future<bool> singleEntity({
    @Body() required AnotherFile file,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('FormUrlEncoded', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {'Lol'},
        requests: [
          UniversalRequest(
            name: 'sendBody',
            requestType: HttpRequestType.post,
            route: '/send',
            returnType: null,
            contentType: 'application/x-www-form-urlencoded',
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.header,
                type: UniversalType(
                  type: 'string',
                  name: 'token',
                  isRequired: true,
                ),
                name: 'Authorization',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.body,
                type: UniversalType(type: 'Lol', name: 'lol', isRequired: true),
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/lol.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @FormUrlEncoded()
  @POST('/send')
  Future<void> sendBody({
    @Header('Authorization') required String token,
    @Body() required Lol lol,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Required parameters', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/{id}',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [UniversalCollections.nullableList],
                  name: 'list',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'list',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.path,
                type: UniversalType(
                  type: 'integer',
                  name: 'id',
                  isRequired: true,
                ),
                name: 'id',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'stringType',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'type',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/{id}')
  Future<String> getRequest({
    @Path('id') required int id,
    @Query('list') List<String>? list,
    @Query('type') String? stringType,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Default parameters', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {'Unit', 'Soma'},
        requests: [
          UniversalRequest(
            name: 'sendMessage',
            requestType: HttpRequestType.post,
            route: '/send',
            returnType: null,
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.header,
                type: UniversalType(
                  type: 'string',
                  name: 'token',
                  defaultValue: 'message123',
                  isRequired: true,
                ),
                name: 'Authorization',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'number',
                  format: 'double',
                  name: 'age',
                  defaultValue: '17',
                  isRequired: true,
                ),
                name: 'age',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'boolean',
                  name: 'adult',
                  defaultValue: 'false',
                  isRequired: true,
                ),
                name: 'adult',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'Unit',
                  name: 'unit',
                  defaultValue: 'CELSIUS',
                  enumType: 'string',
                  isRequired: true,
                ),
                name: 'unit',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'Soma',
                  name: 'soma',
                  defaultValue: '1',
                  enumType: 'int',
                  isRequired: true,
                ),
                name: 'soma',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/unit.dart';
import '../models/soma.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @POST('/send')
  Future<void> sendMessage({
    @Header('Authorization') required String token,
    @Query('age') required double age,
    @Query('adult') required bool adult,
    @Query('unit') required Unit unit,
    @Query('soma') required Soma soma,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });

    test('Dart + retrofit nullability of request parameters', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/request',
            returnType: UniversalType(
              type: 'string',
              nullable: true,
              isRequired: false,
            ),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.nullableList,
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.list,
                  ],
                  name: 'deepList',
                  isRequired: false,
                ),
                name: 'deepArrayNullable',
              ),
            ],
          ),
          UniversalRequest(
            name: 'getRequest2',
            requestType: HttpRequestType.get,
            route: '/request2',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.nullableList,
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.listNullableItem,
                  ],
                  name: 'deepList',
                  isRequired: false,
                ),
                name: 'deepArrayNullable',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/request')
  Future<String?> getRequest({
    @Query('deepArrayNullable') List<List<List<List<String>>>>? deepList,
  });

  @GET('/request2')
  Future<String> getRequest2({
    @Query('deepArrayNullable') List<List<List<List<String?>>>>? deepList,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });

    test('dart + retrofit nullable parameters', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/request',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.nullableList,
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.list,
                  ],
                  name: 'list1',
                  isRequired: false,
                ),
                name: 'deepArrayNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list2',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'notRequiredButNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list3',
                  isRequired: true,
                ),
                name: 'requiredButNotNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list4',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'notRequiredAndNotNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list5',
                  isRequired: true,
                  nullable: true,
                ),
                name: 'RequiredAndNullable',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/request')
  Future<String> getRequest({
    @Query('requiredButNotNullable') required String list3,
    @Query('RequiredAndNullable') required String? list5,
    @Query('deepArrayNullable') List<List<List<List<String>>>>? list1,
    @Query('notRequiredButNullable') String? list2,
    @Query('notRequiredAndNotNullable') String? list4,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('One empty request with @Extras option for dart', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/{id}',
            returnType: null,
            parameters: [],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(
          name: '',
          outputDirectory: '.',
          extrasParameterByDefault: true,
        ),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/{id}')
  Future<void> getRequest({
    @Extras() Map<String, dynamic>? extras,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('All request types of parameter with @Extras option for dart', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/{id}',
            returnType: null,
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.header,
                type: UniversalType(
                  type: 'string',
                  name: 'token',
                  isRequired: true,
                ),
                name: 'Authorization',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'alex',
                  isRequired: true,
                ),
                name: 'name',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.path,
                type: UniversalType(type: 'int', name: 'id', isRequired: true),
                name: 'id',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.body,
                type: UniversalType(
                  type: 'Another',
                  name: 'another',
                  isRequired: true,
                ),
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(
          name: '',
          outputDirectory: '.',
          extrasParameterByDefault: true,
        ),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/{id}')
  Future<void> getRequest({
    @Header('Authorization') required String token,
    @Query('name') required String alex,
    @Path('id') required int id,
    @Body() required Another another,
    @Extras() Map<String, dynamic>? extras,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });

  group('Description', () {
    test('dart + retrofit', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {'Some'},
        requests: [
          UniversalRequest(
            name: 'some',
            requestType: HttpRequestType.get,
            route: '/some',
            description: 'Some description',
            returnType: null,
            parameters: [],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/some.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  /// Some description
  @GET('/some')
  Future<void> some();
}
''';
      expect(filledContent.content, expectedContents);
    });

    test('Dart + retrofit nullability of request parameters', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/request',
            returnType: UniversalType(
              type: 'string',
              nullable: true,
              isRequired: true,
            ),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.nullableList,
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.list,
                  ],
                  name: 'deepList',
                  isRequired: false,
                ),
                name: 'deepArrayNullable',
              ),
            ],
          ),
          UniversalRequest(
            name: 'getRequest2',
            requestType: HttpRequestType.get,
            route: '/request2',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.nullableList,
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.list,
                  ],
                  name: 'deepList',
                  isRequired: false,
                ),
                name: 'deepArrayNullable',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/request')
  Future<String?> getRequest({
    @Query('deepArrayNullable') List<List<List<List<String>>>>? deepList,
  });

  @GET('/request2')
  Future<String> getRequest2({
    @Query('deepArrayNullable') List<List<List<List<String>>>>? deepList,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });

    test('dart + retrofit nullable parameters', () async {
      const restClient = UniversalRestClient(
        name: 'ClassName',
        imports: {},
        requests: [
          UniversalRequest(
            name: 'getRequest',
            requestType: HttpRequestType.get,
            route: '/request',
            returnType: UniversalType(type: 'string', isRequired: true),
            parameters: [
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  wrappingCollections: [
                    UniversalCollections.nullableList,
                    UniversalCollections.list,
                    UniversalCollections.list,
                    UniversalCollections.list,
                  ],
                  name: 'list1',
                  isRequired: false,
                ),
                name: 'deepArrayNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list2',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'notRequiredButNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list3',
                  isRequired: true,
                ),
                name: 'requiredButNotNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list4',
                  isRequired: false,
                  nullable: true,
                ),
                name: 'notRequiredAndNotNullable',
              ),
              UniversalRequestType(
                parameterType: HttpParameterType.query,
                type: UniversalType(
                  type: 'string',
                  name: 'list5',
                  isRequired: true,
                  nullable: true,
                ),
                name: 'RequiredAndNullable',
              ),
            ],
          ),
        ],
      );
      final fillController = FillController(
        config: const GeneratorConfig(name: '', outputDirectory: '.'),
      );
      final filledContent = fillController.fillRestClientContent(restClient);
      const expectedContents = '''
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

part 'class_name_client.g.dart';

@RestApi()
abstract class ClassNameClient {
  factory ClassNameClient(Dio dio, {String? baseUrl}) = _ClassNameClient;

  @GET('/request')
  Future<String> getRequest({
    @Query('requiredButNotNullable') required String list3,
    @Query('RequiredAndNullable') required String? list5,
    @Query('deepArrayNullable') List<List<List<List<String>>>>? list1,
    @Query('notRequiredButNullable') String? list2,
    @Query('notRequiredAndNotNullable') String? list4,
  });
}
''';
      expect(filledContent.content, expectedContents);
    });
  });
}
