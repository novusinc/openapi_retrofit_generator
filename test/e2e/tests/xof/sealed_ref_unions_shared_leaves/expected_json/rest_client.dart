// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;

import 'clients/events_client.dart';

/// Sealed Ref Unions Shared Leaves API `v1.0.0`
class RestClient {
  RestClient(Dio dio, {String? baseUrl}) : _dio = dio, _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0.0';

  EventsClient? _events;

  EventsClient get events => _events ??= EventsClient(_dio, baseUrl: _baseUrl);
}
