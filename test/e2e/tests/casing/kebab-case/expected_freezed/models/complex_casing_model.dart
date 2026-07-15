// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'complex_casing_model.freezed.dart';
part 'complex_casing_model.g.dart';

@Freezed()
abstract class ComplexCasingModel with _$ComplexCasingModel {
  const factory ComplexCasingModel({
    @JsonKey(name: 'is-not-on-blocklist') required String isNotOnBlocklist,
    @JsonKey(name: 'http-method') required String httpMethod,
    @JsonKey(name: 'xml-data') required String xmlData,
    @JsonKey(name: 'api-key') required String apiKey,
    @JsonKey(name: 'sql-db-connection') required String sqlDbConnection,
    @JsonKey(name: 'html-parser') required String htmlParser,
    @JsonKey(name: 'user-id-123') required String userId123,
    @JsonKey(name: 'http2-protocol') required String http2Protocol,
    @JsonKey(name: 'oauth2-token') required String oauth2Token,
    @JsonKey(name: 'v1-api-endpoint') required String v1ApiEndpoint,
    @JsonKey(name: 'html5-parser') required String html5Parser,
    @JsonKey(name: 'xml2json-converter') required String xml2jsonConverter,
    @JsonKey(name: 'api-2-v3-endpoint') required String api2V3Endpoint,
    @JsonKey(name: 'https-connection') required String httpsConnection,
    @JsonKey(name: 'xml-http-request') required String xmlHttpRequest,
    @JsonKey(name: 'sql-db-connection-2') required String sqlDbConnection2,
    @JsonKey(name: 'json-api-response') required String jsonApiResponse,
    @JsonKey(name: 'jwt-auth-token') required String jwtAuthToken,
    @JsonKey(name: 'a-b-c') required String aBC,
    @JsonKey(name: 'x-y-z') required String xYZ,
    @JsonKey(name: 'io-operation') required String ioOperation,
    @JsonKey(name: 'ui-component') required String uiComponent,
    @JsonKey(name: 'id-field') required String idField,
    @JsonKey(name: 'uuid-v4-generator') required String uuidV4Generator,
    @JsonKey(name: 'css-html5-renderer') required String cssHtml5Renderer,
    @JsonKey(name: 'api-v2-https-endpoint') required String apiV2HttpsEndpoint,
    @JsonKey(name: 'oauth2-jwt-token') required String oauth2JwtToken,
    @JsonKey(name: 'xml2json-v3-parser') required String xml2jsonV3Parser,
  }) = _ComplexCasingModel;

  Map<String, dynamic> toJson() =>
      _$ComplexCasingModelToJson(this as _ComplexCasingModel);
  factory ComplexCasingModel.fromJson(Map<String, Object?> json) =>
      _$ComplexCasingModelFromJson(json);
}

extension ComplexCasingModelMergeX on ComplexCasingModel {
  /// Returns a new [ComplexCasingModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ComplexCasingModel merge(ComplexCasingModel other) {
    return copyWith(
      isNotOnBlocklist: other.isNotOnBlocklist,
      httpMethod: other.httpMethod,
      xmlData: other.xmlData,
      apiKey: other.apiKey,
      sqlDbConnection: other.sqlDbConnection,
      htmlParser: other.htmlParser,
      userId123: other.userId123,
      http2Protocol: other.http2Protocol,
      oauth2Token: other.oauth2Token,
      v1ApiEndpoint: other.v1ApiEndpoint,
      html5Parser: other.html5Parser,
      xml2jsonConverter: other.xml2jsonConverter,
      api2V3Endpoint: other.api2V3Endpoint,
      httpsConnection: other.httpsConnection,
      xmlHttpRequest: other.xmlHttpRequest,
      sqlDbConnection2: other.sqlDbConnection2,
      jsonApiResponse: other.jsonApiResponse,
      jwtAuthToken: other.jwtAuthToken,
      aBC: other.aBC,
      xYZ: other.xYZ,
      ioOperation: other.ioOperation,
      uiComponent: other.uiComponent,
      idField: other.idField,
      uuidV4Generator: other.uuidV4Generator,
      cssHtml5Renderer: other.cssHtml5Renderer,
      apiV2HttpsEndpoint: other.apiV2HttpsEndpoint,
      oauth2JwtToken: other.oauth2JwtToken,
      xml2jsonV3Parser: other.xml2jsonV3Parser,
    );
  }
}
