// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'plots.dart';

part 'model41.freezed.dart';
part 'model41.g.dart';

@Freezed()
abstract class Model41 with _$Model41 {
  const factory Model41({Plots? plots, num? total}) = _Model41;

  Map<String, dynamic> toJson() => _$Model41ToJson(this as _Model41);
  factory Model41.fromJson(Map<String, Object?> json) =>
      _$Model41FromJson(json);
}

extension Model41MergeX on Model41 {
  /// Returns a new [Model41] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model41 merge(Model41 other) {
    return copyWith(plots: other.plots, total: other.total);
  }
}
