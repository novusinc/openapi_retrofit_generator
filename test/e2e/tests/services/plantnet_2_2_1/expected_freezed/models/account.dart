// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'name.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@Freezed()
abstract class Account with _$Account {
  const factory Account({
    String? id,
    String? username,
    Name? name,
    String? created,
  }) = _Account;

  Map<String, dynamic> toJson() => _$AccountToJson(this as _Account);
  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}

extension AccountMergeX on Account {
  /// Returns a new [Account] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Account merge(Account other) {
    return copyWith(
      id: other.id,
      username: other.username,
      name: other.name,
      created: other.created,
    );
  }
}
