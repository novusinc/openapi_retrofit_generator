// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cat.dart';

class CatMapper extends ClassMapperBase<Cat> {
  CatMapper._();

  static CatMapper? _instance;
  static CatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CatMapper._());
      PetStatusMapper.ensureInitialized();
      PetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Cat';

  static String _$id(Cat v) => v.id;
  static const Field<Cat, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(Cat v) => v.createdAt;
  static const Field<Cat, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime? _$updatedAt(Cat v) => v.updatedAt;
  static const Field<Cat, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );
  static String? _$nickname(Cat v) => v.nickname;
  static const Field<Cat, String> _f$nickname = Field(
    'nickname',
    _$nickname,
    opt: true,
  );
  static PetStatus? _$status(Cat v) => v.status;
  static const Field<Cat, PetStatus> _f$status = Field(
    'status',
    _$status,
    opt: true,
  );
  static Pet? _$friend(Cat v) => v.friend;
  static const Field<Cat, Pet> _f$friend = Field('friend', _$friend, opt: true);
  static String _$type(Cat v) => v.type;
  static const Field<Cat, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'cat',
  );
  static int _$schemaVersion(Cat v) => v.schemaVersion;
  static const Field<Cat, int> _f$schemaVersion = Field(
    'schemaVersion',
    _$schemaVersion,
    key: r'schema_version',
    opt: true,
    def: 1,
  );
  static int _$mewCount(Cat v) => v.mewCount;
  static const Field<Cat, int> _f$mewCount = Field(
    'mewCount',
    _$mewCount,
    key: r'mew_count',
    opt: true,
    def: 0,
  );

  @override
  final MappableFields<Cat> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #nickname: _f$nickname,
    #status: _f$status,
    #friend: _f$friend,
    #type: _f$type,
    #schemaVersion: _f$schemaVersion,
    #mewCount: _f$mewCount,
  };

  static Cat _instantiate(DecodingData data) {
    return Cat(
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      nickname: data.dec(_f$nickname),
      status: data.dec(_f$status),
      friend: data.dec(_f$friend),
      type: data.dec(_f$type),
      schemaVersion: data.dec(_f$schemaVersion),
      mewCount: data.dec(_f$mewCount),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Cat fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Cat>(map);
  }

  static Cat fromJsonString(String json) {
    return ensureInitialized().decodeJson<Cat>(json);
  }
}

mixin CatMappable {
  String toJsonString() {
    return CatMapper.ensureInitialized().encodeJson<Cat>(this as Cat);
  }

  Map<String, dynamic> toJson() {
    return CatMapper.ensureInitialized().encodeMap<Cat>(this as Cat);
  }

  CatCopyWith<Cat, Cat, Cat> get copyWith =>
      _CatCopyWithImpl<Cat, Cat>(this as Cat, $identity, $identity);
  @override
  String toString() {
    return CatMapper.ensureInitialized().stringifyValue(this as Cat);
  }

  @override
  bool operator ==(Object other) {
    return CatMapper.ensureInitialized().equalsValue(this as Cat, other);
  }

  @override
  int get hashCode {
    return CatMapper.ensureInitialized().hashValue(this as Cat);
  }
}

extension CatValueCopy<$R, $Out> on ObjectCopyWith<$R, Cat, $Out> {
  CatCopyWith<$R, Cat, $Out> get $asCat =>
      $base.as((v, t, t2) => _CatCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CatCopyWith<$R, $In extends Cat, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PetCopyWith<$R, Pet, Pet>? get friend;
  $R call({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? nickname,
    PetStatus? status,
    Pet? friend,
    String? type,
    int? schemaVersion,
    int? mewCount,
  });
  CatCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CatCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Cat, $Out>
    implements CatCopyWith<$R, Cat, $Out> {
  _CatCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Cat> $mapper = CatMapper.ensureInitialized();
  @override
  PetCopyWith<$R, Pet, Pet>? get friend =>
      $value.friend?.copyWith.$chain((v) => call(friend: v));
  @override
  $R call({
    String? id,
    DateTime? createdAt,
    Object? updatedAt = $none,
    Object? nickname = $none,
    Object? status = $none,
    Object? friend = $none,
    String? type,
    int? schemaVersion,
    int? mewCount,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (nickname != $none) #nickname: nickname,
      if (status != $none) #status: status,
      if (friend != $none) #friend: friend,
      if (type != null) #type: type,
      if (schemaVersion != null) #schemaVersion: schemaVersion,
      if (mewCount != null) #mewCount: mewCount,
    }),
  );
  @override
  Cat $make(CopyWithData data) => Cat(
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    nickname: data.get(#nickname, or: $value.nickname),
    status: data.get(#status, or: $value.status),
    friend: data.get(#friend, or: $value.friend),
    type: data.get(#type, or: $value.type),
    schemaVersion: data.get(#schemaVersion, or: $value.schemaVersion),
    mewCount: data.get(#mewCount, or: $value.mewCount),
  );

  @override
  CatCopyWith<$R2, Cat, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CatCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

