// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'lsp.g.dart';

class Lsp {
  final Map<String, dynamic> _json;

  const Lsp(this._json);

  factory Lsp.fromJson(Map<String, dynamic> json) => Lsp(json);

  Map<String, dynamic> toJson() => _json;

  LspVariant1 toVariant1() => LspVariant1.fromJson(_json);
  LspVariant2 toVariant2() => LspVariant2.fromJson(_json);
}

@JsonSerializable()
class LspVariant1 {
  final bool disabled;

  const LspVariant1({required this.disabled});

  factory LspVariant1.fromJson(Map<String, Object?> json) =>
      _$LspVariant1FromJson(json);

  Map<String, Object?> toJson() => _$LspVariant1ToJson(this);
}

@JsonSerializable()
class LspVariant2 {
  final List<String> command;
  final List<String>? extensions;
  final bool? disabled;
  final Map<String, String>? env;
  final Map<String, dynamic>? initialization;

  const LspVariant2({
    required this.command,
    required this.extensions,
    required this.disabled,
    required this.env,
    required this.initialization,
  });

  factory LspVariant2.fromJson(Map<String, Object?> json) =>
      _$LspVariant2FromJson(json);

  Map<String, Object?> toJson() => _$LspVariant2ToJson(this);
}
