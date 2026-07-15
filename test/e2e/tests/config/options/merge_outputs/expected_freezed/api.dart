// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'dart:convert';

import 'package:dio/dio.dart' hide Headers;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/retrofit.dart';

part 'api.freezed.dart';
part 'api.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(Dio dio, {String? baseUrl}) = _UsersClient;

  /// List all users with pagination.
  ///
  /// [page] - Page number.
  ///
  /// [limit] - Items per page.
  ///
  /// [sort] - Sort order.
  ///
  /// [filter] - Filter by name (regex pattern).
  ///
  /// [xRequestId] - Request tracking ID.
  @GET('/users')
  Future<UserListResponse> listUsers({
    @Query('filter') String? filter,
    @Header('X-Request-ID') String? xRequestId,
    @Query('page') int? page = 1,
    @Query('limit') int? limit = 20,
    @Query('sort') Sort? sort = Sort.asc,
  });

  /// Create a new user.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/users')
  Future<User> createUser({
    @Header('X-Idempotency-Key') required String xIdempotencyKey,
    @Body() required CreateUserRequest body,
  });

  /// Get user by ID.
  ///
  /// [userId] - User ID.
  @GET('/users/{userId}')
  Future<User> getUser({@Path('userId') required String userId});

  /// Update user (full replace).
  ///
  /// [body] - Name not received - field will be skipped.
  ///
  /// [userId] - User ID.
  @PUT('/users/{userId}')
  Future<User> updateUser({
    @Body() required UpdateUserRequest body,
    @Path('userId') required String userId,
  });

  /// Partially update user.
  ///
  /// [body] - Name not received - field will be skipped.
  ///
  /// [userId] - User ID.
  @PATCH('/users/{userId}')
  Future<User> patchUser({
    @Body() required PatchUserRequest body,
    @Path('userId') required String userId,
  });

  /// Delete user.
  ///
  /// [userId] - User ID.
  @DELETE('/users/{userId}')
  Future<void> deleteUser({@Path('userId') required String userId});

  /// Upload user avatar (multipart).
  ///
  /// [file] - Avatar image file.
  /// Name not received - field will be skipped.
  ///
  /// [description] - Name not received - field will be skipped.
  ///
  /// [metadata] - Name not received - field will be skipped.
  ///
  /// [userId] - User ID.
  @MultiPart()
  @POST('/users/{userId}/avatar')
  Future<FileUploadResponse> uploadAvatar({
    @Part(name: 'file') required MultipartFile file,
    @Path('userId') required String userId,
    @Part(name: 'description') String? description,
    @Part(name: 'metadata') FileMetadata? metadata,
  });

  /// Get user friends (circular User references).
  ///
  /// [userId] - User ID.
  @GET('/users/{userId}/friends')
  Future<List<User>> getUserFriends({@Path('userId') required String userId});
}

@RestApi()
abstract class PostsClient {
  factory PostsClient(Dio dio, {String? baseUrl}) = _PostsClient;

  /// List posts with inline filter schema.
  ///
  /// [filters] - Complex filter object (inline schema).
  @GET('/posts')
  Future<ListPostsResponse> listPosts({@Query('filters') Filters? filters});

  /// Create post with inline request schema
  @POST('/posts')
  Future<PostModel> createPost({@Body() CreatePostRequest? body});

  /// Get post with nested comments
  @GET('/posts/{postId}')
  Future<GetPostResponse> getPost({@Path('postId') required String postId});
}

@RestApi()
abstract class CommentsClient {
  factory CommentsClient(Dio dio, {String? baseUrl}) = _CommentsClient;

  /// Create comment (can have parent comment - circular).
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/comments')
  Future<Comment> createComment({@Body() CreateCommentRequest? body});

  /// Get nested comment replies.
  ///
  /// [depth] - Maximum nesting depth.
  @GET('/comments/{commentId}/replies')
  Future<List<Comment>> getCommentReplies({
    @Path('commentId') required String commentId,
    @Query('depth') int? depth = 3,
  });
}

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String? baseUrl}) = _FilesClient;

  /// Upload file with metadata.
  ///
  /// [files] - Name not received - field will be skipped.
  ///
  /// [description] - Name not received - field will be skipped.
  ///
  /// [category] - Name not received and was auto-generated.
  ///
  /// [metadata] - Name not received - field will be skipped.
  ///
  /// [isPublic] - Name not received - field will be skipped.
  @MultiPart()
  @POST('/files/upload')
  Future<FileUploadResponse> uploadFile({
    @Part(name: 'files') required List<MultipartFile> files,
    @Part(name: 'isPublic') bool? isPublic = false,
    @Part(name: 'description') String? description,
    @Part(name: 'category') Enum0? category,
    @Part(name: 'metadata') FileMetadata? metadata,
  });

  /// Download file
  @GET('/files/{fileId}/download')
  @DioResponseType(ResponseType.bytes)
  Future<HttpResponse<List<int>>> downloadFile({
    @Path('fileId') required String fileId,
  });
}

@RestApi()
abstract class AdvancedClient {
  factory AdvancedClient(Dio dio, {String? baseUrl}) = _AdvancedClient;

  /// Create payment (oneOf for payment methods).
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/payments')
  Future<PaymentResponse> createPayment({@Body() required PaymentRequest body});

  /// Search with anyOf result types
  @POST('/search')
  Future<SearchResponse> search({@Body() SearchRequest? body});

  /// Get polymorphic entity
  @GET('/entities/{entityId}')
  Future<Entity> getEntity({@Path('entityId') required String entityId});

  /// Endpoint with potentially conflicting names
  @GET('/conflicts/duplicate')
  Future<GetDuplicateResponse> getDuplicate();

  /// Create with dynamic properties.
  ///
  /// [body] - Name not received - field will be skipped.
  @POST('/dynamic')
  Future<EmptyObject> createDynamic({@Body() DynamicObject? body});

  /// Check if methods endpoint exists
  @HEAD('/methods')
  Future<void> checkMethods();

  /// Get allowed methods
  @OPTIONS('/methods')
  Future<String> methodsOptions();
}

@RestApi()
abstract class DeprecatedClient {
  factory DeprecatedClient(Dio dio, {String? baseUrl}) = _DeprecatedClient;

  /// Legacy user list endpoint
  @Deprecated('This method is marked as deprecated')
  @GET('/legacy/users')
  Future<List<LegacyUser>> legacyListUsers();
}

@RestApi()
abstract class AdminClient {
  factory AdminClient(Dio dio, {String? baseUrl}) = _AdminClient;

  /// Get admin settings
  @GET('/admin/settings')
  Future<Map<String, String>> getAdminSettings();
}

@RestApi()
abstract class InternalClient {
  factory InternalClient(Dio dio, {String? baseUrl}) = _InternalClient;

  /// Internal health check
  @GET('/internal/health')
  Future<InternalHealthCheckResponse> internalHealthCheck();
}

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  /// Ping endpoint (no tags - goes to fallback client)
  @GET('/ping')
  Future<String> ping();
}

@Freezed()
abstract class User with _$User {
  const factory User({
    required String id,
    required String email,
    required String username,
    required UserRole role,
    required DateTime createdAt,
    String? firstName,
    String? lastName,
    int? age,
    UserStatus? status,
    String? avatar,
    String? bio,
    UserSettings? settings,
    Map<String, String>? metadata,

    /// Circular reference to User
    List<User>? friends,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _User;

  Map<String, dynamic> toJson() => _$UserToJson(this as _User);
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

extension UserMergeX on User {
  /// Returns a new [User] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  User merge(User other) {
    return copyWith(
      id: other.id,
      email: other.email,
      username: other.username,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      role: other.role,
      status: other.status,
      avatar: other.avatar,
      bio: other.bio,
      settings: other.settings,
      metadata: other.metadata,
      friends: other.friends,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      deletedAt: other.deletedAt,
    );
  }
}

@Freezed()
abstract class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    required String email,
    required String username,
    required String password,
    String? firstName,
    String? lastName,
    int? age,
    UserRole? role,
  }) = _CreateUserRequest;

  Map<String, dynamic> toJson() =>
      _$CreateUserRequestToJson(this as _CreateUserRequest);
  factory CreateUserRequest.fromJson(Map<String, Object?> json) =>
      _$CreateUserRequestFromJson(json);
}

extension CreateUserRequestMergeX on CreateUserRequest {
  /// Returns a new [CreateUserRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateUserRequest merge(CreateUserRequest other) {
    return copyWith(
      email: other.email,
      username: other.username,
      password: other.password,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      role: other.role,
    );
  }
}

@Freezed()
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    required String email,
    required String username,
    String? firstName,
    String? lastName,
    int? age,
    String? bio,
  }) = _UpdateUserRequest;

  Map<String, dynamic> toJson() =>
      _$UpdateUserRequestToJson(this as _UpdateUserRequest);
  factory UpdateUserRequest.fromJson(Map<String, Object?> json) =>
      _$UpdateUserRequestFromJson(json);
}

extension UpdateUserRequestMergeX on UpdateUserRequest {
  /// Returns a new [UpdateUserRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UpdateUserRequest merge(UpdateUserRequest other) {
    return copyWith(
      email: other.email,
      username: other.username,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      bio: other.bio,
    );
  }
}

@Freezed()
abstract class PatchUserRequest with _$PatchUserRequest {
  const factory PatchUserRequest({
    String? email,
    String? username,
    String? firstName,
    String? lastName,
    int? age,
    String? bio,
    UserSettings? settings,
  }) = _PatchUserRequest;

  Map<String, dynamic> toJson() =>
      _$PatchUserRequestToJson(this as _PatchUserRequest);
  factory PatchUserRequest.fromJson(Map<String, Object?> json) =>
      _$PatchUserRequestFromJson(json);
}

extension PatchUserRequestMergeX on PatchUserRequest {
  /// Returns a new [PatchUserRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PatchUserRequest merge(PatchUserRequest other) {
    return copyWith(
      email: other.email,
      username: other.username,
      firstName: other.firstName,
      lastName: other.lastName,
      age: other.age,
      bio: other.bio,
      settings: other.settings,
    );
  }
}

/// User role enumeration
@JsonEnum()
enum UserRole {
  @JsonValue('admin')
  admin('admin'),
  @JsonValue('moderator')
  moderator('moderator'),
  @JsonValue('user')
  user('user'),
  @JsonValue('guest')
  guest('guest'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserRole(this.json);

  factory UserRole.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<UserRole> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum UserStatus {
  @JsonValue('active')
  active('active'),
  @JsonValue('inactive')
  inactive('inactive'),
  @JsonValue('suspended')
  suspended('suspended'),
  @JsonValue('banned')
  banned('banned'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserStatus(this.json);

  factory UserStatus.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<UserStatus> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@Freezed()
abstract class UserSettings with _$UserSettings {
  const factory UserSettings({
    UserSettingsNotifications? notifications,
    UserSettingsPrivacy? privacy,
    @Default(UserSettingsThemeTheme.auto) UserSettingsThemeTheme theme,
    @Default('en') String language,
  }) = _UserSettings;

  Map<String, dynamic> toJson() => _$UserSettingsToJson(this as _UserSettings);
  factory UserSettings.fromJson(Map<String, Object?> json) =>
      _$UserSettingsFromJson(json);
}

extension UserSettingsMergeX on UserSettings {
  /// Returns a new [UserSettings] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSettings merge(UserSettings other) {
    return copyWith(
      theme: other.theme,
      notifications: other.notifications,
      privacy: other.privacy,
      language: other.language,
    );
  }
}

@Freezed()
abstract class UserListResponse with _$UserListResponse {
  const factory UserListResponse({
    required List<User> users,
    required int total,
    int? page,
    int? limit,
  }) = _UserListResponse;

  Map<String, dynamic> toJson() =>
      _$UserListResponseToJson(this as _UserListResponse);
  factory UserListResponse.fromJson(Map<String, Object?> json) =>
      _$UserListResponseFromJson(json);
}

extension UserListResponseMergeX on UserListResponse {
  /// Returns a new [UserListResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserListResponse merge(UserListResponse other) {
    return copyWith(
      users: other.users,
      total: other.total,
      page: other.page,
      limit: other.limit,
    );
  }
}

@Freezed()
abstract class LegacyUser with _$LegacyUser {
  const factory LegacyUser({int? id, String? name, String? email}) =
      _LegacyUser;

  Map<String, dynamic> toJson() => _$LegacyUserToJson(this as _LegacyUser);
  factory LegacyUser.fromJson(Map<String, Object?> json) =>
      _$LegacyUserFromJson(json);
}

extension LegacyUserMergeX on LegacyUser {
  /// Returns a new [LegacyUser] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  LegacyUser merge(LegacyUser other) {
    return copyWith(id: other.id, name: other.name, email: other.email);
  }
}

@Freezed()
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String title,
    required String content,
    required String authorId,
    required PostStatus status,
    required DateTime createdAt,
    @Default(0) int viewCount,
    @Default(0) int likeCount,
    String? excerpt,
    User? author,
    List<String>? tags,
    List<Category>? categories,
    DateTime? publishedAt,
    dynamic metadata,
    DateTime? updatedAt,
  }) = _PostModel;

  Map<String, dynamic> toJson() => _$PostModelToJson(this as _PostModel);
  factory PostModel.fromJson(Map<String, Object?> json) =>
      _$PostModelFromJson(json);
}

extension PostModelMergeX on PostModel {
  /// Returns a new [PostModel] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PostModel merge(PostModel other) {
    return copyWith(
      id: other.id,
      title: other.title,
      content: other.content,
      excerpt: other.excerpt,
      authorId: other.authorId,
      author: other.author,
      status: other.status,
      tags: other.tags,
      categories: other.categories,
      publishedAt: other.publishedAt,
      viewCount: other.viewCount,
      likeCount: other.likeCount,
      metadata: other.metadata,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
    );
  }
}

@JsonEnum()
enum PostStatus {
  @JsonValue('draft')
  draft('draft'),
  @JsonValue('published')
  published('published'),
  @JsonValue('archived')
  archived('archived'),
  @JsonValue('deleted')
  deleted('deleted'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PostStatus(this.json);

  factory PostStatus.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PostStatus> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@Freezed()
abstract class Category with _$Category {
  const factory Category({
    required String id,
    required String name,
    String? slug,

    /// Circular reference for nested categories
    Category? parent,
  }) = _Category;

  Map<String, dynamic> toJson() => _$CategoryToJson(this as _Category);
  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}

extension CategoryMergeX on Category {
  /// Returns a new [Category] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Category merge(Category other) {
    return copyWith(
      id: other.id,
      name: other.name,
      slug: other.slug,
      parent: other.parent,
    );
  }
}

@Freezed()
abstract class Comment with _$Comment {
  const factory Comment({
    required String id,
    required String content,
    required String authorId,
    required DateTime createdAt,
    @Default(0) int depth,
    @Default(0) int likeCount,
    User? author,
    String? postId,

    /// Parent comment ID (for nested replies)
    String? parentId,

    /// Circular reference to parent comment
    Comment? parent,

    /// Nested replies (circular)
    List<Comment>? replies,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Comment;

  Map<String, dynamic> toJson() => _$CommentToJson(this as _Comment);
  factory Comment.fromJson(Map<String, Object?> json) =>
      _$CommentFromJson(json);
}

extension CommentMergeX on Comment {
  /// Returns a new [Comment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Comment merge(Comment other) {
    return copyWith(
      id: other.id,
      content: other.content,
      authorId: other.authorId,
      author: other.author,
      postId: other.postId,
      parentId: other.parentId,
      parent: other.parent,
      replies: other.replies,
      depth: other.depth,
      likeCount: other.likeCount,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      deletedAt: other.deletedAt,
    );
  }
}

@Freezed()
abstract class CreateCommentRequest with _$CreateCommentRequest {
  const factory CreateCommentRequest({
    required String content,
    required String authorId,
    String? postId,
    String? parentId,
  }) = _CreateCommentRequest;

  Map<String, dynamic> toJson() =>
      _$CreateCommentRequestToJson(this as _CreateCommentRequest);
  factory CreateCommentRequest.fromJson(Map<String, Object?> json) =>
      _$CreateCommentRequestFromJson(json);
}

extension CreateCommentRequestMergeX on CreateCommentRequest {
  /// Returns a new [CreateCommentRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreateCommentRequest merge(CreateCommentRequest other) {
    return copyWith(
      content: other.content,
      authorId: other.authorId,
      postId: other.postId,
      parentId: other.parentId,
    );
  }
}

@Freezed()
abstract class FileMetadata with _$FileMetadata {
  const factory FileMetadata({
    String? filename,
    String? mimeType,
    int? size,
    List<String>? tags,
  }) = _FileMetadata;

  Map<String, dynamic> toJson() => _$FileMetadataToJson(this as _FileMetadata);
  factory FileMetadata.fromJson(Map<String, Object?> json) =>
      _$FileMetadataFromJson(json);
}

extension FileMetadataMergeX on FileMetadata {
  /// Returns a new [FileMetadata] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileMetadata merge(FileMetadata other) {
    return copyWith(
      filename: other.filename,
      mimeType: other.mimeType,
      size: other.size,
      tags: other.tags,
    );
  }
}

@Freezed()
abstract class FileUploadResponse with _$FileUploadResponse {
  const factory FileUploadResponse({
    required String id,
    required String url,
    required String filename,
    required int size,
    String? mimeType,
    DateTime? uploadedAt,
  }) = _FileUploadResponse;

  Map<String, dynamic> toJson() =>
      _$FileUploadResponseToJson(this as _FileUploadResponse);
  factory FileUploadResponse.fromJson(Map<String, Object?> json) =>
      _$FileUploadResponseFromJson(json);
}

extension FileUploadResponseMergeX on FileUploadResponse {
  /// Returns a new [FileUploadResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FileUploadResponse merge(FileUploadResponse other) {
    return copyWith(
      id: other.id,
      url: other.url,
      filename: other.filename,
      mimeType: other.mimeType,
      size: other.size,
      uploadedAt: other.uploadedAt,
    );
  }
}

@Freezed(unionKey: 'paymentType')
sealed class PaymentRequest with _$PaymentRequest {
  @FreezedUnionValue('credit_card')
  const factory PaymentRequest.creditCard({
    required String cardNumber,
    required int expiryMonth,
    required int expiryYear,
    required String cvv,
    required double amount,
    String? cardholderName,
  }) = PaymentRequestCreditCard;

  @FreezedUnionValue('bank_transfer')
  const factory PaymentRequest.bankTransfer({
    required String accountNumber,
    required String routingNumber,
    required double amount,
    String? accountHolder,
    String? reference,
  }) = PaymentRequestBankTransfer;

  @FreezedUnionValue('crypto')
  const factory PaymentRequest.crypto({
    required String walletAddress,
    required CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,
    required double amount,
    String? transactionHash,
  }) = PaymentRequestCrypto;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory PaymentRequest.fromJson(Map<String, Object?> json) =>
      _$PaymentRequestFromJson(json);
}

@Freezed()
abstract class CreditCardPayment with _$CreditCardPayment {
  const factory CreditCardPayment({
    required CreditCardPaymentPaymentTypePaymentType paymentType,
    required String cardNumber,
    required int expiryMonth,
    required int expiryYear,
    required String cvv,
    required double amount,
    String? cardholderName,
  }) = _CreditCardPayment;

  Map<String, dynamic> toJson() =>
      _$CreditCardPaymentToJson(this as _CreditCardPayment);
  factory CreditCardPayment.fromJson(Map<String, Object?> json) =>
      _$CreditCardPaymentFromJson(json);
}

extension CreditCardPaymentMergeX on CreditCardPayment {
  /// Returns a new [CreditCardPayment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreditCardPayment merge(CreditCardPayment other) {
    return copyWith(
      paymentType: other.paymentType,
      cardNumber: other.cardNumber,
      expiryMonth: other.expiryMonth,
      expiryYear: other.expiryYear,
      cvv: other.cvv,
      cardholderName: other.cardholderName,
      amount: other.amount,
    );
  }
}

@Freezed()
abstract class BankTransferPayment with _$BankTransferPayment {
  const factory BankTransferPayment({
    required BankTransferPaymentPaymentTypePaymentType paymentType,
    required String accountNumber,
    required String routingNumber,
    required double amount,
    String? accountHolder,
    String? reference,
  }) = _BankTransferPayment;

  Map<String, dynamic> toJson() =>
      _$BankTransferPaymentToJson(this as _BankTransferPayment);
  factory BankTransferPayment.fromJson(Map<String, Object?> json) =>
      _$BankTransferPaymentFromJson(json);
}

extension BankTransferPaymentMergeX on BankTransferPayment {
  /// Returns a new [BankTransferPayment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  BankTransferPayment merge(BankTransferPayment other) {
    return copyWith(
      paymentType: other.paymentType,
      accountNumber: other.accountNumber,
      routingNumber: other.routingNumber,
      accountHolder: other.accountHolder,
      amount: other.amount,
      reference: other.reference,
    );
  }
}

@Freezed()
abstract class CryptoPayment with _$CryptoPayment {
  const factory CryptoPayment({
    required CryptoPaymentPaymentTypePaymentType paymentType,
    required String walletAddress,
    required CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,
    required double amount,
    String? transactionHash,
  }) = _CryptoPayment;

  Map<String, dynamic> toJson() =>
      _$CryptoPaymentToJson(this as _CryptoPayment);
  factory CryptoPayment.fromJson(Map<String, Object?> json) =>
      _$CryptoPaymentFromJson(json);
}

extension CryptoPaymentMergeX on CryptoPayment {
  /// Returns a new [CryptoPayment] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CryptoPayment merge(CryptoPayment other) {
    return copyWith(
      paymentType: other.paymentType,
      walletAddress: other.walletAddress,
      cryptocurrency: other.cryptocurrency,
      amount: other.amount,
      transactionHash: other.transactionHash,
    );
  }
}

@Freezed()
abstract class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    required String transactionId,
    required PaymentResponseStatusStatus status,
    required double amount,
    DateTime? processedAt,
    PaymentResponseDetails? details,
    @Default('USD') String currency,
  }) = _PaymentResponse;

  Map<String, dynamic> toJson() =>
      _$PaymentResponseToJson(this as _PaymentResponse);
  factory PaymentResponse.fromJson(Map<String, Object?> json) =>
      _$PaymentResponseFromJson(json);
}

extension PaymentResponseMergeX on PaymentResponse {
  /// Returns a new [PaymentResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PaymentResponse merge(PaymentResponse other) {
    return copyWith(
      transactionId: other.transactionId,
      status: other.status,
      amount: other.amount,
      currency: other.currency,
      processedAt: other.processedAt,
      details: other.details,
    );
  }
}

@Freezed(unionKey: 'type')
sealed class SearchResult with _$SearchResult {
  @FreezedUnionValue('user')
  const factory SearchResult.user({required User user, double? score}) =
      SearchResultUser;

  @FreezedUnionValue('post')
  const factory SearchResult.post({
    required PostModel post,
    double? score,
    List<String>? highlights,
  }) = SearchResultPost;

  @FreezedUnionValue('comment')
  const factory SearchResult.comment({
    required Comment comment,
    double? score,
  }) = SearchResultComment;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory SearchResult.fromJson(Map<String, Object?> json) =>
      _$SearchResultFromJson(json);
}

@Freezed()
abstract class UserSearchResult with _$UserSearchResult {
  const factory UserSearchResult({
    required UserSearchResultTypeType type,
    required User user,
    double? score,
  }) = _UserSearchResult;

  Map<String, dynamic> toJson() =>
      _$UserSearchResultToJson(this as _UserSearchResult);
  factory UserSearchResult.fromJson(Map<String, Object?> json) =>
      _$UserSearchResultFromJson(json);
}

extension UserSearchResultMergeX on UserSearchResult {
  /// Returns a new [UserSearchResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSearchResult merge(UserSearchResult other) {
    return copyWith(type: other.type, user: other.user, score: other.score);
  }
}

@Freezed()
abstract class PostSearchResult with _$PostSearchResult {
  const factory PostSearchResult({
    required PostSearchResultTypeType type,
    required PostModel post,
    double? score,
    List<String>? highlights,
  }) = _PostSearchResult;

  Map<String, dynamic> toJson() =>
      _$PostSearchResultToJson(this as _PostSearchResult);
  factory PostSearchResult.fromJson(Map<String, Object?> json) =>
      _$PostSearchResultFromJson(json);
}

extension PostSearchResultMergeX on PostSearchResult {
  /// Returns a new [PostSearchResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PostSearchResult merge(PostSearchResult other) {
    return copyWith(
      type: other.type,
      post: other.post,
      score: other.score,
      highlights: other.highlights,
    );
  }
}

@Freezed()
abstract class CommentSearchResult with _$CommentSearchResult {
  const factory CommentSearchResult({
    required CommentSearchResultTypeType type,
    required Comment comment,
    double? score,
  }) = _CommentSearchResult;

  Map<String, dynamic> toJson() =>
      _$CommentSearchResultToJson(this as _CommentSearchResult);
  factory CommentSearchResult.fromJson(Map<String, Object?> json) =>
      _$CommentSearchResultFromJson(json);
}

extension CommentSearchResultMergeX on CommentSearchResult {
  /// Returns a new [CommentSearchResult] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CommentSearchResult merge(CommentSearchResult other) {
    return copyWith(
      type: other.type,
      comment: other.comment,
      score: other.score,
    );
  }
}

@Freezed(unionKey: 'entityType')
sealed class Entity with _$Entity {
  @FreezedUnionValue('person')
  const factory Entity.person({
    required String id,
    required DateTime createdAt,
    required DateTime dateOfBirth,
    String? name,
    String? description,
    DateTime? updatedAt,
    String? nationality,
    String? occupation,
    Map<String, String>? socialProfiles,
  }) = EntityPerson;

  @FreezedUnionValue('organization')
  const factory Entity.organization({
    required String id,
    required DateTime createdAt,
    required String registrationNumber,
    String? name,
    String? description,
    DateTime? updatedAt,
    DateTime? foundedDate,
    String? industry,
    int? employeeCount,
    double? revenue,
  }) = EntityOrganization;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory Entity.fromJson(Map<String, Object?> json) => _$EntityFromJson(json);
}

@Freezed()
abstract class BaseEntity with _$BaseEntity {
  const factory BaseEntity({
    required String id,
    required String entityType,
    required DateTime createdAt,
    String? name,
    String? description,
    DateTime? updatedAt,
  }) = _BaseEntity;

  Map<String, dynamic> toJson() => _$BaseEntityToJson(this as _BaseEntity);
  factory BaseEntity.fromJson(Map<String, Object?> json) =>
      _$BaseEntityFromJson(json);
}

extension BaseEntityMergeX on BaseEntity {
  /// Returns a new [BaseEntity] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  BaseEntity merge(BaseEntity other) {
    return copyWith(
      id: other.id,
      entityType: other.entityType,
      name: other.name,
      description: other.description,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
    );
  }
}

@Freezed()
abstract class PersonEntity with _$PersonEntity {
  const factory PersonEntity({
    required String id,
    required DateTime createdAt,
    required DateTime dateOfBirth,
    PersonEntityEntityTypeEntityType? entityType,
    String? name,
    String? description,
    DateTime? updatedAt,
    String? nationality,
    String? occupation,
    Map<String, String>? socialProfiles,
  }) = _PersonEntity;

  Map<String, dynamic> toJson() => _$PersonEntityToJson(this as _PersonEntity);
  factory PersonEntity.fromJson(Map<String, Object?> json) =>
      _$PersonEntityFromJson(json);
}

extension PersonEntityMergeX on PersonEntity {
  /// Returns a new [PersonEntity] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  PersonEntity merge(PersonEntity other) {
    return copyWith(
      id: other.id,
      entityType: other.entityType,
      name: other.name,
      description: other.description,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      dateOfBirth: other.dateOfBirth,
      nationality: other.nationality,
      occupation: other.occupation,
      socialProfiles: other.socialProfiles,
    );
  }
}

@Freezed()
abstract class OrganizationEntity with _$OrganizationEntity {
  const factory OrganizationEntity({
    required String id,
    required DateTime createdAt,
    required String registrationNumber,
    OrganizationEntityEntityTypeEntityType? entityType,
    String? name,
    String? description,
    DateTime? updatedAt,
    DateTime? foundedDate,
    String? industry,
    int? employeeCount,
    double? revenue,
  }) = _OrganizationEntity;

  Map<String, dynamic> toJson() =>
      _$OrganizationEntityToJson(this as _OrganizationEntity);
  factory OrganizationEntity.fromJson(Map<String, Object?> json) =>
      _$OrganizationEntityFromJson(json);
}

extension OrganizationEntityMergeX on OrganizationEntity {
  /// Returns a new [OrganizationEntity] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  OrganizationEntity merge(OrganizationEntity other) {
    return copyWith(
      id: other.id,
      entityType: other.entityType,
      name: other.name,
      description: other.description,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      registrationNumber: other.registrationNumber,
      foundedDate: other.foundedDate,
      industry: other.industry,
      employeeCount: other.employeeCount,
      revenue: other.revenue,
    );
  }
}

/// Object with arbitrary string properties
typedef DynamicObject = Map<String, String>;

/// Empty object (no properties)
typedef EmptyObject = dynamic;

@Freezed()
abstract class Data with _$Data {
  const factory Data({
    required String id,
    required String value,
    DataNested? nested,
  }) = _Data;

  Map<String, dynamic> toJson() => _$DataToJson(this as _Data);
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

extension DataMergeX on Data {
  /// Returns a new [Data] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Data merge(Data other) {
    return copyWith(id: other.id, value: other.value, nested: other.nested);
  }
}

@Freezed()
abstract class Error with _$Error {
  const factory Error({
    required String code,
    required String message,
    List<ErrorDetails>? details,
    DateTime? timestamp,
    String? requestId,
  }) = _Error;

  Map<String, dynamic> toJson() => _$ErrorToJson(this as _Error);
  factory Error.fromJson(Map<String, Object?> json) => _$ErrorFromJson(json);
}

extension ErrorMergeX on Error {
  /// Returns a new [Error] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Error merge(Error other) {
    return copyWith(
      code: other.code,
      message: other.message,
      details: other.details,
      timestamp: other.timestamp,
      requestId: other.requestId,
    );
  }
}

/// Generic status (conflicts with UserStatus)
@JsonEnum()
enum Status {
  @JsonValue('active')
  active('active'),
  @JsonValue('inactive')
  inactive('inactive'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Status(this.json);

  factory Status.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<Status> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@Freezed()
abstract class Result with _$Result {
  const factory Result({bool? success, dynamic data, Status? status}) = _Result;

  Map<String, dynamic> toJson() => _$ResultToJson(this as _Result);
  factory Result.fromJson(Map<String, Object?> json) => _$ResultFromJson(json);
}

extension ResultMergeX on Result {
  /// Returns a new [Result] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Result merge(Result other) {
    return copyWith(
      success: other.success,
      data: other.data,
      status: other.status,
    );
  }
}

@Freezed()
abstract class ListPostsResponsePagination with _$ListPostsResponsePagination {
  const factory ListPostsResponsePagination({
    int? page,
    int? total,
    bool? hasNext,
  }) = _ListPostsResponsePagination;

  Map<String, dynamic> toJson() =>
      _$ListPostsResponsePaginationToJson(this as _ListPostsResponsePagination);
  factory ListPostsResponsePagination.fromJson(Map<String, Object?> json) =>
      _$ListPostsResponsePaginationFromJson(json);
}

extension ListPostsResponsePaginationMergeX on ListPostsResponsePagination {
  /// Returns a new [ListPostsResponsePagination] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ListPostsResponsePagination merge(ListPostsResponsePagination other) {
    return copyWith(
      page: other.page,
      total: other.total,
      hasNext: other.hasNext,
    );
  }
}

@Freezed()
abstract class ListPostsResponse with _$ListPostsResponse {
  const factory ListPostsResponse({
    List<PostModel>? posts,
    ListPostsResponsePagination? pagination,
    Map<String, String>? metadata,
  }) = _ListPostsResponse;

  Map<String, dynamic> toJson() =>
      _$ListPostsResponseToJson(this as _ListPostsResponse);
  factory ListPostsResponse.fromJson(Map<String, Object?> json) =>
      _$ListPostsResponseFromJson(json);
}

extension ListPostsResponseMergeX on ListPostsResponse {
  /// Returns a new [ListPostsResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ListPostsResponse merge(ListPostsResponse other) {
    return copyWith(
      posts: other.posts,
      pagination: other.pagination,
      metadata: other.metadata,
    );
  }
}

@Freezed()
abstract class FiltersDateRange with _$FiltersDateRange {
  const factory FiltersDateRange({DateTime? from, DateTime? to}) =
      _FiltersDateRange;

  Map<String, dynamic> toJson() =>
      _$FiltersDateRangeToJson(this as _FiltersDateRange);
  factory FiltersDateRange.fromJson(Map<String, Object?> json) =>
      _$FiltersDateRangeFromJson(json);
}

extension FiltersDateRangeMergeX on FiltersDateRange {
  /// Returns a new [FiltersDateRange] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  FiltersDateRange merge(FiltersDateRange other) {
    return copyWith(from: other.from, to: other.to);
  }
}

@Freezed()
abstract class Filters with _$Filters {
  const factory Filters({
    String? authorId,
    List<String>? tags,
    FiltersDateRange? dateRange,
  }) = _Filters;

  Map<String, dynamic> toJson() => _$FiltersToJson(this as _Filters);
  factory Filters.fromJson(Map<String, Object?> json) =>
      _$FiltersFromJson(json);
}

extension FiltersMergeX on Filters {
  /// Returns a new [Filters] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Filters merge(Filters other) {
    return copyWith(
      authorId: other.authorId,
      tags: other.tags,
      dateRange: other.dateRange,
    );
  }
}

@Freezed()
abstract class CreatePostRequest with _$CreatePostRequest {
  const factory CreatePostRequest({
    required String title,
    required String content,
    required String authorId,
    List<String>? tags,
    DateTime? publishAt,
    dynamic metadata,
  }) = _CreatePostRequest;

  Map<String, dynamic> toJson() =>
      _$CreatePostRequestToJson(this as _CreatePostRequest);
  factory CreatePostRequest.fromJson(Map<String, Object?> json) =>
      _$CreatePostRequestFromJson(json);
}

extension CreatePostRequestMergeX on CreatePostRequest {
  /// Returns a new [CreatePostRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  CreatePostRequest merge(CreatePostRequest other) {
    return copyWith(
      title: other.title,
      content: other.content,
      authorId: other.authorId,
      tags: other.tags,
      publishAt: other.publishAt,
      metadata: other.metadata,
    );
  }
}

@Freezed()
abstract class GetPostResponse with _$GetPostResponse {
  const factory GetPostResponse({
    required String id,
    required String title,
    required String content,
    required String authorId,
    required PostStatus status,
    required DateTime createdAt,
    @Default(0) int viewCount,
    @Default(0) int likeCount,
    String? excerpt,
    User? author,
    List<String>? tags,
    List<Category>? categories,
    DateTime? publishedAt,
    dynamic metadata,
    DateTime? updatedAt,
    List<Comment>? comments,
  }) = _GetPostResponse;

  Map<String, dynamic> toJson() =>
      _$GetPostResponseToJson(this as _GetPostResponse);
  factory GetPostResponse.fromJson(Map<String, Object?> json) =>
      _$GetPostResponseFromJson(json);
}

extension GetPostResponseMergeX on GetPostResponse {
  /// Returns a new [GetPostResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetPostResponse merge(GetPostResponse other) {
    return copyWith(
      id: other.id,
      title: other.title,
      content: other.content,
      excerpt: other.excerpt,
      authorId: other.authorId,
      author: other.author,
      status: other.status,
      tags: other.tags,
      categories: other.categories,
      publishedAt: other.publishedAt,
      viewCount: other.viewCount,
      likeCount: other.likeCount,
      metadata: other.metadata,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      comments: other.comments,
    );
  }
}

@Freezed()
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({List<SearchResult>? results}) = _SearchResponse;

  Map<String, dynamic> toJson() =>
      _$SearchResponseToJson(this as _SearchResponse);
  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}

extension SearchResponseMergeX on SearchResponse {
  /// Returns a new [SearchResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SearchResponse merge(SearchResponse other) {
    return copyWith(results: other.results);
  }
}

@Freezed()
abstract class SearchRequest with _$SearchRequest {
  const factory SearchRequest({String? query, Map<String, String>? filters}) =
      _SearchRequest;

  Map<String, dynamic> toJson() =>
      _$SearchRequestToJson(this as _SearchRequest);
  factory SearchRequest.fromJson(Map<String, Object?> json) =>
      _$SearchRequestFromJson(json);
}

extension SearchRequestMergeX on SearchRequest {
  /// Returns a new [SearchRequest] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  SearchRequest merge(SearchRequest other) {
    return copyWith(query: other.query, filters: other.filters);
  }
}

@Freezed()
abstract class InternalHealthCheckResponse with _$InternalHealthCheckResponse {
  const factory InternalHealthCheckResponse({
    InternalHealthCheckResponseStatusStatus? status,
  }) = _InternalHealthCheckResponse;

  Map<String, dynamic> toJson() =>
      _$InternalHealthCheckResponseToJson(this as _InternalHealthCheckResponse);
  factory InternalHealthCheckResponse.fromJson(Map<String, Object?> json) =>
      _$InternalHealthCheckResponseFromJson(json);
}

extension InternalHealthCheckResponseMergeX on InternalHealthCheckResponse {
  /// Returns a new [InternalHealthCheckResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  InternalHealthCheckResponse merge(InternalHealthCheckResponse other) {
    return copyWith(status: other.status);
  }
}

@Freezed()
abstract class GetDuplicateResponseMetadata
    with _$GetDuplicateResponseMetadata {
  const factory GetDuplicateResponseMetadata({String? id, int? value}) =
      _GetDuplicateResponseMetadata;

  Map<String, dynamic> toJson() => _$GetDuplicateResponseMetadataToJson(
    this as _GetDuplicateResponseMetadata,
  );
  factory GetDuplicateResponseMetadata.fromJson(Map<String, Object?> json) =>
      _$GetDuplicateResponseMetadataFromJson(json);
}

extension GetDuplicateResponseMetadataMergeX on GetDuplicateResponseMetadata {
  /// Returns a new [GetDuplicateResponseMetadata] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetDuplicateResponseMetadata merge(GetDuplicateResponseMetadata other) {
    return copyWith(id: other.id, value: other.value);
  }
}

@Freezed()
abstract class GetDuplicateResponse with _$GetDuplicateResponse {
  const factory GetDuplicateResponse({
    Data? data,
    GetDuplicateResponseMetadata? metadata,
  }) = _GetDuplicateResponse;

  Map<String, dynamic> toJson() =>
      _$GetDuplicateResponseToJson(this as _GetDuplicateResponse);
  factory GetDuplicateResponse.fromJson(Map<String, Object?> json) =>
      _$GetDuplicateResponseFromJson(json);
}

extension GetDuplicateResponseMergeX on GetDuplicateResponse {
  /// Returns a new [GetDuplicateResponse] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  GetDuplicateResponse merge(GetDuplicateResponse other) {
    return copyWith(data: other.data, metadata: other.metadata);
  }
}

@Freezed()
abstract class UserSettingsNotifications with _$UserSettingsNotifications {
  const factory UserSettingsNotifications({
    @Default(true) bool email,
    @Default(false) bool push,
    @Default(false) bool sms,
  }) = _UserSettingsNotifications;

  Map<String, dynamic> toJson() =>
      _$UserSettingsNotificationsToJson(this as _UserSettingsNotifications);
  factory UserSettingsNotifications.fromJson(Map<String, Object?> json) =>
      _$UserSettingsNotificationsFromJson(json);
}

extension UserSettingsNotificationsMergeX on UserSettingsNotifications {
  /// Returns a new [UserSettingsNotifications] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSettingsNotifications merge(UserSettingsNotifications other) {
    return copyWith(email: other.email, push: other.push, sms: other.sms);
  }
}

@Freezed()
abstract class UserSettingsPrivacy with _$UserSettingsPrivacy {
  const factory UserSettingsPrivacy({
    @Default(UserSettingsPrivacyProfileVisibilityProfileVisibility.public)
    UserSettingsPrivacyProfileVisibilityProfileVisibility profileVisibility,
    @Default(false) bool showEmail,
  }) = _UserSettingsPrivacy;

  Map<String, dynamic> toJson() =>
      _$UserSettingsPrivacyToJson(this as _UserSettingsPrivacy);
  factory UserSettingsPrivacy.fromJson(Map<String, Object?> json) =>
      _$UserSettingsPrivacyFromJson(json);
}

extension UserSettingsPrivacyMergeX on UserSettingsPrivacy {
  /// Returns a new [UserSettingsPrivacy] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  UserSettingsPrivacy merge(UserSettingsPrivacy other) {
    return copyWith(
      profileVisibility: other.profileVisibility,
      showEmail: other.showEmail,
    );
  }
}

@Freezed(unionKey: 'paymentType')
sealed class PaymentResponseDetails with _$PaymentResponseDetails {
  @FreezedUnionValue('credit_card')
  const factory PaymentResponseDetails.creditCard({
    required String cardNumber,
    required int expiryMonth,
    required int expiryYear,
    required String cvv,
    required double amount,
    String? cardholderName,
  }) = PaymentResponseDetailsCreditCard;

  @FreezedUnionValue('bank_transfer')
  const factory PaymentResponseDetails.bankTransfer({
    required String accountNumber,
    required String routingNumber,
    required double amount,
    String? accountHolder,
    String? reference,
  }) = PaymentResponseDetailsBankTransfer;

  @FreezedUnionValue('crypto')
  const factory PaymentResponseDetails.crypto({
    required String walletAddress,
    required CryptoPaymentCryptocurrencyCryptocurrency cryptocurrency,
    required double amount,
    String? transactionHash,
  }) = PaymentResponseDetailsCrypto;

  Map<String, dynamic> toJson() => throw UnimplementedError();
  factory PaymentResponseDetails.fromJson(Map<String, Object?> json) =>
      _$PaymentResponseDetailsFromJson(json);
}

@Freezed()
abstract class DataNestedData with _$DataNestedData {
  const factory DataNestedData({int? id, String? name}) = _DataNestedData;

  Map<String, dynamic> toJson() =>
      _$DataNestedDataToJson(this as _DataNestedData);
  factory DataNestedData.fromJson(Map<String, Object?> json) =>
      _$DataNestedDataFromJson(json);
}

extension DataNestedDataMergeX on DataNestedData {
  /// Returns a new [DataNestedData] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DataNestedData merge(DataNestedData other) {
    return copyWith(id: other.id, name: other.name);
  }
}

@Freezed()
abstract class DataNested with _$DataNested {
  const factory DataNested({List<DataNestedData>? data}) = _DataNested;

  Map<String, dynamic> toJson() => _$DataNestedToJson(this as _DataNested);
  factory DataNested.fromJson(Map<String, Object?> json) =>
      _$DataNestedFromJson(json);
}

extension DataNestedMergeX on DataNested {
  /// Returns a new [DataNested] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  DataNested merge(DataNested other) {
    return copyWith(data: other.data);
  }
}

@Freezed()
abstract class ErrorDetails with _$ErrorDetails {
  const factory ErrorDetails({String? field, String? message}) = _ErrorDetails;

  Map<String, dynamic> toJson() => _$ErrorDetailsToJson(this as _ErrorDetails);
  factory ErrorDetails.fromJson(Map<String, Object?> json) =>
      _$ErrorDetailsFromJson(json);
}

extension ErrorDetailsMergeX on ErrorDetails {
  /// Returns a new [ErrorDetails] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  ErrorDetails merge(ErrorDetails other) {
    return copyWith(field: other.field, message: other.message);
  }
}

@JsonEnum()
enum Sort {
  @JsonValue('asc')
  asc('asc'),
  @JsonValue('desc')
  desc('desc'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Sort(this.json);

  factory Sort.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<Sort> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

/// Name not received and was auto-generated.
@JsonEnum()
enum Enum0 {
  @JsonValue('image')
  image('image'),
  @JsonValue('video')
  video('video'),
  @JsonValue('document')
  document('document'),
  @JsonValue('other')
  other('other'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const Enum0(this.json);

  factory Enum0.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<Enum0> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum InternalHealthCheckResponseStatusStatus {
  @JsonValue('healthy')
  healthy('healthy'),
  @JsonValue('degraded')
  degraded('degraded'),
  @JsonValue('unhealthy')
  unhealthy('unhealthy'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const InternalHealthCheckResponseStatusStatus(this.json);

  factory InternalHealthCheckResponseStatusStatus.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<InternalHealthCheckResponseStatusStatus> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum UserSettingsThemeTheme {
  @JsonValue('light')
  light('light'),
  @JsonValue('dark')
  dark('dark'),
  @JsonValue('auto')
  auto('auto'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserSettingsThemeTheme(this.json);

  factory UserSettingsThemeTheme.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<UserSettingsThemeTheme> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum UserSettingsPrivacyProfileVisibilityProfileVisibility {
  @JsonValue('public')
  public('public'),
  @JsonValue('friends')
  friends('friends'),
  @JsonValue('private')
  private('private'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserSettingsPrivacyProfileVisibilityProfileVisibility(this.json);

  factory UserSettingsPrivacyProfileVisibilityProfileVisibility.fromJson(
    String json,
  ) => values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<UserSettingsPrivacyProfileVisibilityProfileVisibility>
  get $valuesDefined => values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum CreditCardPaymentPaymentTypePaymentType {
  @JsonValue('credit_card')
  creditCard('credit_card'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const CreditCardPaymentPaymentTypePaymentType(this.json);

  factory CreditCardPaymentPaymentTypePaymentType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<CreditCardPaymentPaymentTypePaymentType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum BankTransferPaymentPaymentTypePaymentType {
  @JsonValue('bank_transfer')
  bankTransfer('bank_transfer'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const BankTransferPaymentPaymentTypePaymentType(this.json);

  factory BankTransferPaymentPaymentTypePaymentType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<BankTransferPaymentPaymentTypePaymentType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum CryptoPaymentPaymentTypePaymentType {
  @JsonValue('crypto')
  crypto('crypto'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const CryptoPaymentPaymentTypePaymentType(this.json);

  factory CryptoPaymentPaymentTypePaymentType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<CryptoPaymentPaymentTypePaymentType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum CryptoPaymentCryptocurrencyCryptocurrency {
  @JsonValue('BTC')
  btc('BTC'),
  @JsonValue('ETH')
  eth('ETH'),
  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('BNB')
  bnb('BNB'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const CryptoPaymentCryptocurrencyCryptocurrency(this.json);

  factory CryptoPaymentCryptocurrencyCryptocurrency.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<CryptoPaymentCryptocurrencyCryptocurrency> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum PaymentResponseStatusStatus {
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PaymentResponseStatusStatus(this.json);

  factory PaymentResponseStatusStatus.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PaymentResponseStatusStatus> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum UserSearchResultTypeType {
  @JsonValue('user')
  user('user'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const UserSearchResultTypeType(this.json);

  factory UserSearchResultTypeType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<UserSearchResultTypeType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum PostSearchResultTypeType {
  @JsonValue('post')
  post('post'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PostSearchResultTypeType(this.json);

  factory PostSearchResultTypeType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PostSearchResultTypeType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum CommentSearchResultTypeType {
  @JsonValue('comment')
  comment('comment'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const CommentSearchResultTypeType(this.json);

  factory CommentSearchResultTypeType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<CommentSearchResultTypeType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum PersonEntityEntityTypeEntityType {
  @JsonValue('person')
  person('person'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PersonEntityEntityTypeEntityType(this.json);

  factory PersonEntityEntityTypeEntityType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<PersonEntityEntityTypeEntityType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

@JsonEnum()
enum OrganizationEntityEntityTypeEntityType {
  @JsonValue('organization')
  organization('organization'),

  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const OrganizationEntityEntityTypeEntityType(this.json);

  factory OrganizationEntityEntityTypeEntityType.fromJson(String json) =>
      values.firstWhere((e) => e.json == json, orElse: () => $unknown);

  final String? json;

  String toJson() => json ?? 'null';

  @override
  String toString() => json ?? super.toString();

  /// Returns all defined enum values excluding the $unknown value.
  static List<OrganizationEntityEntityTypeEntityType> get $valuesDefined =>
      values.where((value) => value != $unknown).toList();
}

/// Comprehensive API Test Schema `v1.0.0`.
///
/// This schema covers ALL edge cases and features of openapi_retrofit_generator:.
/// - Multiple tags for client separation.
/// - Anonymous/inline classes.
/// - Circular model dependencies.
/// - Parameter references ($ref).
/// - Duplicated/conflicting names.
/// - All HTTP methods (GET, POST, PUT, DELETE, PATCH, HEAD, OPTIONS).
/// - All parameter types (query, path, body, header, cookie).
/// - Arrays, objects, primitives, enums.
/// - oneOf, anyOf, allOf compositions.
/// - Discriminators (mapped and unmapped).
/// - Nullable and required fields.
/// - Default values.
/// - Deprecated endpoints and models.
/// - Multipart file uploads.
/// - Multiple response codes.
/// - Nested objects (deep nesting).
/// - Date/DateTime types.
/// - Validation (min, max, pattern, minLength, maxLength).
/// - Additional properties.
/// - Empty objects.
/// - Reference types ($ref).
/// - Wrapped collections.
/// - x-nullable extension.
/// - Circular dependencies.
/// - Name conflicts and edge cases.
/// - Different content types.
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
