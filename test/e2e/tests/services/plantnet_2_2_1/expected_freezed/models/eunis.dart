// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'eunis.freezed.dart';
part 'eunis.g.dart';

@Freezed()
abstract class Eunis with _$Eunis {
  const factory Eunis({required String typo, required String habitat}) = _Eunis;

  Map<String, dynamic> toJson() => _$EunisToJson(this as _Eunis);
  factory Eunis.fromJson(Map<String, Object?> json) => _$EunisFromJson(json);
}

extension EunisMergeX on Eunis {
  /// Returns a new [Eunis] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Eunis merge(Eunis other) {
    return copyWith(typo: other.typo, habitat: other.habitat);
  }
}
