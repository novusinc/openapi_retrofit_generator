// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_details.freezed.dart';
part 'error_details.g.dart';

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
