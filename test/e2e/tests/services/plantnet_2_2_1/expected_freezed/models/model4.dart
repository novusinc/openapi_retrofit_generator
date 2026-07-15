// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'account.dart';
import 'billing.dart';
import 'contract.dart';
import 'history.dart';
import 'security.dart';

part 'model4.freezed.dart';
part 'model4.g.dart';

@Freezed()
abstract class Model4 with _$Model4 {
  const factory Model4({
    Account? account,
    Contract? contract,
    History? history,
    Billing? billing,
    Security? security,
  }) = _Model4;

  Map<String, dynamic> toJson() => _$Model4ToJson(this as _Model4);
  factory Model4.fromJson(Map<String, Object?> json) => _$Model4FromJson(json);
}

extension Model4MergeX on Model4 {
  /// Returns a new [Model4] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model4 merge(Model4 other) {
    return copyWith(
      account: other.account,
      contract: other.contract,
      history: other.history,
      billing: other.billing,
      security: other.security,
    );
  }
}
