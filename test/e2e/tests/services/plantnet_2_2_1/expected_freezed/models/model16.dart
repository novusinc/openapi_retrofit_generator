// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model16.freezed.dart';
part 'model16.g.dart';

@Freezed()
abstract class Model16 with _$Model16 {
  const factory Model16({required String id, required String category}) =
      _Model16;

  Map<String, dynamic> toJson() => _$Model16ToJson(this as _Model16);
  factory Model16.fromJson(Map<String, Object?> json) =>
      _$Model16FromJson(json);
}

extension Model16MergeX on Model16 {
  /// Returns a new [Model16] that is a combination of this instance and the
  /// given [other] instance. All fields from [other] are copied to the new instance.
  Model16 merge(Model16 other) {
    return copyWith(id: other.id, category: other.category);
  }
}
