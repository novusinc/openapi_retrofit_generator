// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'dog.dart';

class DogMapper extends ClassMapperBase<Dog> {
  DogMapper._();

  static DogMapper? _instance;
  static DogMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DogMapper._());
      PetStatusMapper.ensureInitialized();
      ToyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Dog';

  static String _$id(Dog v) => v.id;
  static const Field<Dog, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(Dog v) => v.createdAt;
  static const Field<Dog, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String _$barkSound(Dog v) => v.barkSound;
  static const Field<Dog, String> _f$barkSound = Field(
    'barkSound',
    _$barkSound,
    key: r'bark_sound',
  );
  static DateTime? _$updatedAt(Dog v) => v.updatedAt;
  static const Field<Dog, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );
  static String? _$nickname(Dog v) => v.nickname;
  static const Field<Dog, String> _f$nickname = Field(
    'nickname',
    _$nickname,
    opt: true,
  );
  static PetStatus? _$status(Dog v) => v.status;
  static const Field<Dog, PetStatus> _f$status = Field(
    'status',
    _$status,
    opt: true,
  );
  static Toy? _$toy(Dog v) => v.toy;
  static const Field<Dog, Toy> _f$toy = Field('toy', _$toy, opt: true);
  static String _$type(Dog v) => v.type;
  static const Field<Dog, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'dog',
  );
  static int _$schemaVersion(Dog v) => v.schemaVersion;
  static const Field<Dog, int> _f$schemaVersion = Field(
    'schemaVersion',
    _$schemaVersion,
    key: r'schema_version',
    opt: true,
    def: 1,
  );

  @override
  final MappableFields<Dog> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #barkSound: _f$barkSound,
    #updatedAt: _f$updatedAt,
    #nickname: _f$nickname,
    #status: _f$status,
    #toy: _f$toy,
    #type: _f$type,
    #schemaVersion: _f$schemaVersion,
  };

  static Dog _instantiate(DecodingData data) {
    return Dog(
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      barkSound: data.dec(_f$barkSound),
      updatedAt: data.dec(_f$updatedAt),
      nickname: data.dec(_f$nickname),
      status: data.dec(_f$status),
      toy: data.dec(_f$toy),
      type: data.dec(_f$type),
      schemaVersion: data.dec(_f$schemaVersion),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Dog fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Dog>(map);
  }

  static Dog fromJsonString(String json) {
    return ensureInitialized().decodeJson<Dog>(json);
  }
}

mixin DogMappable {
  String toJsonString() {
    return DogMapper.ensureInitialized().encodeJson<Dog>(this as Dog);
  }

  Map<String, dynamic> toJson() {
    return DogMapper.ensureInitialized().encodeMap<Dog>(this as Dog);
  }

  DogCopyWith<Dog, Dog, Dog> get copyWith =>
      _DogCopyWithImpl<Dog, Dog>(this as Dog, $identity, $identity);
  @override
  String toString() {
    return DogMapper.ensureInitialized().stringifyValue(this as Dog);
  }

  @override
  bool operator ==(Object other) {
    return DogMapper.ensureInitialized().equalsValue(this as Dog, other);
  }

  @override
  int get hashCode {
    return DogMapper.ensureInitialized().hashValue(this as Dog);
  }
}

extension DogValueCopy<$R, $Out> on ObjectCopyWith<$R, Dog, $Out> {
  DogCopyWith<$R, Dog, $Out> get $asDog =>
      $base.as((v, t, t2) => _DogCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DogCopyWith<$R, $In extends Dog, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ToyCopyWith<$R, Toy, Toy>? get toy;
  $R call({
    String? id,
    DateTime? createdAt,
    String? barkSound,
    DateTime? updatedAt,
    String? nickname,
    PetStatus? status,
    Toy? toy,
    String? type,
    int? schemaVersion,
  });
  DogCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DogCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Dog, $Out>
    implements DogCopyWith<$R, Dog, $Out> {
  _DogCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Dog> $mapper = DogMapper.ensureInitialized();
  @override
  ToyCopyWith<$R, Toy, Toy>? get toy =>
      $value.toy?.copyWith.$chain((v) => call(toy: v));
  @override
  $R call({
    String? id,
    DateTime? createdAt,
    String? barkSound,
    Object? updatedAt = $none,
    Object? nickname = $none,
    Object? status = $none,
    Object? toy = $none,
    String? type,
    int? schemaVersion,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (barkSound != null) #barkSound: barkSound,
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (nickname != $none) #nickname: nickname,
      if (status != $none) #status: status,
      if (toy != $none) #toy: toy,
      if (type != null) #type: type,
      if (schemaVersion != null) #schemaVersion: schemaVersion,
    }),
  );
  @override
  Dog $make(CopyWithData data) => Dog(
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    barkSound: data.get(#barkSound, or: $value.barkSound),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    nickname: data.get(#nickname, or: $value.nickname),
    status: data.get(#status, or: $value.status),
    toy: data.get(#toy, or: $value.toy),
    type: data.get(#type, or: $value.type),
    schemaVersion: data.get(#schemaVersion, or: $value.schemaVersion),
  );

  @override
  DogCopyWith<$R2, Dog, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _DogCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

