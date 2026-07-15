// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'complex_casing_model.freezed.dart';
part 'complex_casing_model.g.dart';

@Freezed()
abstract class ComplexCasingModel with _$ComplexCasingModel {
  const factory ComplexCasingModel({
    required String isNotOnBlocklist,
    required String httpMethod,
    required String xmlData,
    required String apiKey,
    required String sqlDbConnection,
    required String htmlParser,
    required String userId123,
    required String http2Protocol,
    required String oauth2Token,
    required String v1ApiEndpoint,
    required String html5Parser,
    required String xml2jsonConverter,
    required String api2V3Endpoint,
    required String httpsConnection,
    required String xmlHttpRequest,
    required String sqlDbConnection2,
    required String jsonApiResponse,
    required String jwtAuthToken,
    @JsonKey(name: 'aBC') required String aBc,
    @JsonKey(name: 'xYZ') required String xYz,
    required String ioOperation,
    required String uiComponent,
    required String idField,
    required String uuidV4Generator,
    required String cssHtml5Renderer,
    required String apiV2HttpsEndpoint,
    required String oauth2JwtToken,
    required String xml2jsonV3Parser,
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
      aBc: other.aBc,
      xYz: other.xYz,
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
