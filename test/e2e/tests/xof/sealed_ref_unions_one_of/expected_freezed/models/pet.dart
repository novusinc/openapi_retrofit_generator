// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'pet_status.dart';
import 'toy.dart';

part 'pet.freezed.dart';
part 'pet.g.dart';

/// A discriminated union over existing top-level leaf schemas.
sealed class Pet {
  /// The `cat` variant; returns a [Cat] instance.
  const factory Pet.cat({
    /// Unique identifier.
    required String id,
    required DateTime createdAt,
    int schemaVersion,
    int mewCount,
    DateTime? updatedAt,
    String? nickname,
    PetStatus? status,
    Pet? friend,
  }) = Cat;

  /// The `dog` variant; returns a [Dog] instance.
  const factory Pet.dog({
    /// Unique identifier.
    required String id,
    required DateTime createdAt,
    required String barkSound,
    int schemaVersion,
    DateTime? updatedAt,
    String? nickname,
    PetStatus? status,
    Toy? toy,
  }) = Dog;

  /// The `robot` variant; returns a [Robot] instance.
  const factory Pet.robot({
    int schemaVersion,
    int battery,
    DateTime? updatedAt,
    String? nickname,
    PetStatus? status,
  }) = Robot;

  static const typeRobot = Pet.robot();

  /// Deserializes by switching on `type`; unrecognized values yield a
  /// [PetUnknown] carrying the raw JSON instead of throwing.
  factory Pet.fromJson(Map<String, dynamic> json) => switch (json['type']) {
    'cat' => Cat.fromJson(json),
    'dog' => Dog.fromJson(json),
    'robot' => Robot.fromJson(json),
    _ => PetUnknown(Map<String, dynamic>.from(json)),
  };

  // Fields shared by every variant.
  DateTime? get updatedAt;
  String? get nickname;
  PetStatus? get status;
  int get schemaVersion;

  Map<String, dynamic> toJson();
}

/// Fallback [Pet] variant for unrecognized `type` values.
///
/// Preserves the raw wire payload losslessly: [toJson] returns it unchanged,
/// so unknown variants survive persistence and re-serialization. Common
/// fields are decoded lazily from the raw JSON.
final class PetUnknown implements Pet {
  const PetUnknown(this.json);

  /// The raw wire payload.
  final Map<String, dynamic> json;

  @override
  Map<String, dynamic> toJson() => json;

  @override
  DateTime? get updatedAt => json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String);

  @override
  String? get nickname => json['nickname'] as String?;

  @override
  PetStatus? get status => json['status'] == null
      ? null
      : PetStatus.fromJson(json['status'] as String);

  @override
  int get schemaVersion =>
      json['schema_version'] == null ? 1 : json['schema_version'] as int;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetUnknown &&
          const DeepCollectionEquality().equals(json, other.json);

  @override
  int get hashCode => const DeepCollectionEquality().hash(json);

  @override
  String toString() => 'PetUnknown(json: $json)';
}

/// A cat.
@Freezed()
abstract class Cat with _$Cat implements Pet {
  const factory Cat({
    /// Unique identifier.
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? nickname,
    @JsonKey(includeIfNull: false) PetStatus? status,
    @JsonKey(includeIfNull: false) Pet? friend,
    @Default('cat') String type,
    @JsonKey(name: 'schema_version') @Default(1) int schemaVersion,
    @JsonKey(name: 'mew_count') @Default(0) int mewCount,
  }) = _Cat;

  Map<String, dynamic> toJson() => _$CatToJson(this as _Cat);
  factory Cat.fromJson(Map<String, Object?> json) => _$CatFromJson(json);
}

extension CatMergeX on Cat {
  /// Returns a new [Cat] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Cat merge(Cat other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      schemaVersion: other.schemaVersion,
      nickname: other.nickname,
      status: other.status,
      mewCount: other.mewCount,
      friend: other.friend,
    );
  }
}

/// A dog.
@Freezed()
abstract class Dog with _$Dog implements Pet {
  const factory Dog({
    /// Unique identifier.
    required String id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'bark_sound') required String barkSound,
    @JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? nickname,
    @JsonKey(includeIfNull: false) PetStatus? status,
    @JsonKey(includeIfNull: false) Toy? toy,
    @Default('dog') String type,
    @JsonKey(name: 'schema_version') @Default(1) int schemaVersion,
  }) = _Dog;

  Map<String, dynamic> toJson() => _$DogToJson(this as _Dog);
  factory Dog.fromJson(Map<String, Object?> json) => _$DogFromJson(json);
}

extension DogMergeX on Dog {
  /// Returns a new [Dog] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Dog merge(Dog other) {
    return copyWith(
      type: other.type,
      id: other.id,
      createdAt: other.createdAt,
      updatedAt: other.updatedAt,
      schemaVersion: other.schemaVersion,
      nickname: other.nickname,
      status: other.status,
      barkSound: other.barkSound,
      toy: other.toy,
    );
  }
}

/// A robot pet whose fields are all optional or defaulted.
@Freezed()
abstract class Robot with _$Robot implements Pet {
  const factory Robot({
    @JsonKey(includeIfNull: false, name: 'updated_at') DateTime? updatedAt,
    @JsonKey(includeIfNull: false) String? nickname,
    @JsonKey(includeIfNull: false) PetStatus? status,
    @Default('robot') String type,
    @JsonKey(name: 'schema_version') @Default(1) int schemaVersion,
    @Default(100) int battery,
  }) = _Robot;

  Map<String, dynamic> toJson() => _$RobotToJson(this as _Robot);
  factory Robot.fromJson(Map<String, Object?> json) => _$RobotFromJson(json);
}

extension RobotMergeX on Robot {
  /// Returns a new [Robot] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Robot merge(Robot other) {
    return copyWith(
      type: other.type,
      updatedAt: other.updatedAt,
      schemaVersion: other.schemaVersion,
      nickname: other.nickname,
      status: other.status,
      battery: other.battery,
    );
  }
}

/// `copyWith` over the fields shared by every [Pet] variant.
extension PetCopyWithX on Pet {
  /// Returns a copy of this variant with the provided common fields replaced.
  ///
  /// Throws [UnsupportedError] for [PetUnknown]: an unknown payload
  /// cannot be reconstructed field-by-field.
  Pet copyWith({
    Object? updatedAt = freezed,
    Object? nickname = freezed,
    Object? status = freezed,
    Object? schemaVersion = freezed,
  }) => switch (this) {
    Cat v => v.copyWith(
      updatedAt: identical(updatedAt, freezed)
          ? v.updatedAt
          : updatedAt as DateTime?,
      nickname: identical(nickname, freezed) ? v.nickname : nickname as String?,
      status: identical(status, freezed) ? v.status : status as PetStatus?,
      schemaVersion: identical(schemaVersion, freezed)
          ? v.schemaVersion
          : schemaVersion as int,
    ),
    Dog v => v.copyWith(
      updatedAt: identical(updatedAt, freezed)
          ? v.updatedAt
          : updatedAt as DateTime?,
      nickname: identical(nickname, freezed) ? v.nickname : nickname as String?,
      status: identical(status, freezed) ? v.status : status as PetStatus?,
      schemaVersion: identical(schemaVersion, freezed)
          ? v.schemaVersion
          : schemaVersion as int,
    ),
    Robot v => v.copyWith(
      updatedAt: identical(updatedAt, freezed)
          ? v.updatedAt
          : updatedAt as DateTime?,
      nickname: identical(nickname, freezed) ? v.nickname : nickname as String?,
      status: identical(status, freezed) ? v.status : status as PetStatus?,
      schemaVersion: identical(schemaVersion, freezed)
          ? v.schemaVersion
          : schemaVersion as int,
    ),
    PetUnknown _ => throw UnsupportedError(
      'Cannot copyWith an unknown Pet variant',
    ),
  };
}

/// Freezed-style `map` dispatch with leaf-typed callbacks.
extension PetMapX on Pet {
  /// Dispatches to the callback matching this variant.
  ///
  /// [unknown] handles [PetUnknown]; when omitted, an unknown variant
  /// throws a [StateError].
  TResult map<TResult extends Object?>({
    required TResult Function(Cat value) cat,
    required TResult Function(Dog value) dog,
    required TResult Function(Robot value) robot,
    TResult Function(PetUnknown value)? unknown,
  }) => switch (this) {
    Cat v => cat(v),
    Dog v => dog(v),
    Robot v => robot(v),
    PetUnknown v =>
      unknown != null
          ? unknown(v)
          : throw StateError('Unhandled unknown Pet variant: $v'),
  };

  /// Like [map] but returns null for variants without a callback.
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cat value)? cat,
    TResult? Function(Dog value)? dog,
    TResult? Function(Robot value)? robot,
    TResult? Function(PetUnknown value)? unknown,
  }) => switch (this) {
    Cat v => cat?.call(v),
    Dog v => dog?.call(v),
    Robot v => robot?.call(v),
    PetUnknown v => unknown?.call(v),
  };

  /// Like [map] but falls back to [orElse] for variants without a callback.
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Robot value)? robot,
    TResult Function(PetUnknown value)? unknown,
    required TResult Function() orElse,
  }) => switch (this) {
    Cat v when cat != null => cat(v),
    Dog v when dog != null => dog(v),
    Robot v when robot != null => robot(v),
    PetUnknown v when unknown != null => unknown(v),
    _ => orElse(),
  };
}
