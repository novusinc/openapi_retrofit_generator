// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;

import 'clients/users_client.dart';
import 'clients/posts_client.dart';
import 'clients/comments_client.dart';
import 'clients/files_client.dart';
import 'clients/advanced_client.dart';
import 'clients/deprecated_client.dart';
import 'clients/admin_client.dart';
import 'clients/internal_client.dart';
import 'clients/api_client.dart';

/// Comprehensive API Test Schema `v1.0.0`.
///
/// This schema covers ALL edge cases and features of openapi_retrofit_generator:
/// - Multiple tags for client separation
/// - Anonymous/inline classes
/// - Circular model dependencies
/// - Parameter references ($ref)
/// - Duplicated/conflicting names
/// - All HTTP methods (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS)
/// - All parameter types (query, path, body, header, cookie)
/// - Arrays, objects, primitives, enums
/// - oneOf, anyOf, allOf compositions
/// - Discriminators (mapped and unmapped)
/// - Nullable and required fields
/// - Default values
/// - Deprecated endpoints and models
/// - Multipart file uploads
/// - Multiple response codes
/// - Nested objects (deep nesting)
/// - Date/DateTime types
/// - Validation (min, max, pattern, minLength, maxLength)
/// - Additional properties
/// - Empty objects
/// - Reference types ($ref)
/// - Wrapped collections
/// - x-nullable extension
/// - Circular dependencies
/// - Name conflicts and edge cases
/// - Different content types
/// - Headers in responses.
///
class RestClient {
  RestClient(Dio dio, {String? baseUrl}) : _dio = dio, _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => '1.0.0';

  UsersClient? _users;
  PostsClient? _posts;
  CommentsClient? _comments;
  FilesClient? _files;
  AdvancedClient? _advanced;
  DeprecatedClient? _deprecated;
  AdminClient? _admin;
  InternalClient? _internal;
  ApiClient? _api;

  UsersClient get users => _users ??= UsersClient(_dio, baseUrl: _baseUrl);

  PostsClient get posts => _posts ??= PostsClient(_dio, baseUrl: _baseUrl);

  CommentsClient get comments =>
      _comments ??= CommentsClient(_dio, baseUrl: _baseUrl);

  FilesClient get files => _files ??= FilesClient(_dio, baseUrl: _baseUrl);

  AdvancedClient get advanced =>
      _advanced ??= AdvancedClient(_dio, baseUrl: _baseUrl);

  DeprecatedClient get deprecated =>
      _deprecated ??= DeprecatedClient(_dio, baseUrl: _baseUrl);

  AdminClient get admin => _admin ??= AdminClient(_dio, baseUrl: _baseUrl);

  InternalClient get internal =>
      _internal ??= InternalClient(_dio, baseUrl: _baseUrl);

  ApiClient get api => _api ??= ApiClient(_dio, baseUrl: _baseUrl);
}
