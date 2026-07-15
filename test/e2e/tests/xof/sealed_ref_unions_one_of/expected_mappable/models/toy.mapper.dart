// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'toy.dart';

class ToyMapper extends ClassMapperBase<Toy> {
  ToyMapper._();

  static ToyMapper? _instance;
  static ToyMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ToyMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Toy';

  static String _$name(Toy v) => v.name;
  static const Field<Toy, String> _f$name = Field('name', _$name);

  @override
  final MappableFields<Toy> fields = const {#name: _f$name};

  static Toy _instantiate(DecodingData data) {
    return Toy(name: data.dec(_f$name));
  }

  @override
  final Function instantiate = _instantiate;

  static Toy fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Toy>(map);
  }

  static Toy fromJsonString(String json) {
    return ensureInitialized().decodeJson<Toy>(json);
  }
}

mixin ToyMappable {
  String toJsonString() {
    return ToyMapper.ensureInitialized().encodeJson<Toy>(this as Toy);
  }

  Map<String, dynamic> toJson() {
    return ToyMapper.ensureInitialized().encodeMap<Toy>(this as Toy);
  }

  ToyCopyWith<Toy, Toy, Toy> get copyWith =>
      _ToyCopyWithImpl<Toy, Toy>(this as Toy, $identity, $identity);
  @override
  String toString() {
    return ToyMapper.ensureInitialized().stringifyValue(this as Toy);
  }

  @override
  bool operator ==(Object other) {
    return ToyMapper.ensureInitialized().equalsValue(this as Toy, other);
  }

  @override
  int get hashCode {
    return ToyMapper.ensureInitialized().hashValue(this as Toy);
  }
}

extension ToyValueCopy<$R, $Out> on ObjectCopyWith<$R, Toy, $Out> {
  ToyCopyWith<$R, Toy, $Out> get $asToy =>
      $base.as((v, t, t2) => _ToyCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ToyCopyWith<$R, $In extends Toy, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name});
  ToyCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ToyCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Toy, $Out>
    implements ToyCopyWith<$R, Toy, $Out> {
  _ToyCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Toy> $mapper = ToyMapper.ensureInitialized();
  @override
  $R call({String? name}) =>
      $apply(FieldCopyWithData({if (name != null) #name: name}));
  @override
  Toy $make(CopyWithData data) => Toy(name: data.get(#name, or: $value.name));

  @override
  ToyCopyWith<$R2, Toy, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ToyCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

