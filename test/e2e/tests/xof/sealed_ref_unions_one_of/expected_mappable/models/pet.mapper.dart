// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pet.dart';

class PetMapper extends ClassMapperBase<Pet> {
  PetMapper._();

  static PetMapper? _instance;
  static PetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PetMapper._());
      PetCatMapper.ensureInitialized();
      PetDogMapper.ensureInitialized();
      PetRobotMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Pet';

  @override
  final MappableFields<Pet> fields = const {};

  static Pet _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'Pet',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Pet fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Pet>(map);
  }

  static Pet fromJsonString(String json) {
    return ensureInitialized().decodeJson<Pet>(json);
  }
}

mixin PetMappable {
  String toJsonString();
  Map<String, dynamic> toJson();
  PetCopyWith<Pet, Pet, Pet> get copyWith;
}

abstract class PetCopyWith<$R, $In extends Pet, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  PetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class PetCatMapper extends SubClassMapperBase<PetCat> {
  PetCatMapper._();

  static PetCatMapper? _instance;
  static PetCatMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PetCatMapper._());
      PetMapper.ensureInitialized().addSubMapper(_instance!);
      PetStatusMapper.ensureInitialized();
      PetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PetCat';

  static String _$type(PetCat v) => v.type;
  static const Field<PetCat, String> _f$type = Field('type', _$type);
  static String _$id(PetCat v) => v.id;
  static const Field<PetCat, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(PetCat v) => v.createdAt;
  static const Field<PetCat, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime? _$updatedAt(PetCat v) => v.updatedAt;
  static const Field<PetCat, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$schemaVersion(PetCat v) => v.schemaVersion;
  static const Field<PetCat, int> _f$schemaVersion = Field(
    'schemaVersion',
    _$schemaVersion,
    key: r'schema_version',
  );
  static String? _$nickname(PetCat v) => v.nickname;
  static const Field<PetCat, String> _f$nickname = Field(
    'nickname',
    _$nickname,
  );
  static PetStatus? _$status(PetCat v) => v.status;
  static const Field<PetCat, PetStatus> _f$status = Field('status', _$status);
  static int _$mewCount(PetCat v) => v.mewCount;
  static const Field<PetCat, int> _f$mewCount = Field(
    'mewCount',
    _$mewCount,
    key: r'mew_count',
  );
  static Pet? _$friend(PetCat v) => v.friend;
  static const Field<PetCat, Pet> _f$friend = Field('friend', _$friend);

  @override
  final MappableFields<PetCat> fields = const {
    #type: _f$type,
    #id: _f$id,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #schemaVersion: _f$schemaVersion,
    #nickname: _f$nickname,
    #status: _f$status,
    #mewCount: _f$mewCount,
    #friend: _f$friend,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'cat';
  @override
  late final ClassMapperBase superMapper = PetMapper.ensureInitialized();

  static PetCat _instantiate(DecodingData data) {
    return PetCat(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      schemaVersion: data.dec(_f$schemaVersion),
      nickname: data.dec(_f$nickname),
      status: data.dec(_f$status),
      mewCount: data.dec(_f$mewCount),
      friend: data.dec(_f$friend),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PetCat fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PetCat>(map);
  }

  static PetCat fromJsonString(String json) {
    return ensureInitialized().decodeJson<PetCat>(json);
  }
}

mixin PetCatMappable {
  String toJsonString() {
    return PetCatMapper.ensureInitialized().encodeJson<PetCat>(this as PetCat);
  }

  Map<String, dynamic> toJson() {
    return PetCatMapper.ensureInitialized().encodeMap<PetCat>(this as PetCat);
  }

  PetCatCopyWith<PetCat, PetCat, PetCat> get copyWith =>
      _PetCatCopyWithImpl<PetCat, PetCat>(this as PetCat, $identity, $identity);
  @override
  String toString() {
    return PetCatMapper.ensureInitialized().stringifyValue(this as PetCat);
  }

  @override
  bool operator ==(Object other) {
    return PetCatMapper.ensureInitialized().equalsValue(this as PetCat, other);
  }

  @override
  int get hashCode {
    return PetCatMapper.ensureInitialized().hashValue(this as PetCat);
  }
}

extension PetCatValueCopy<$R, $Out> on ObjectCopyWith<$R, PetCat, $Out> {
  PetCatCopyWith<$R, PetCat, $Out> get $asPetCat =>
      $base.as((v, t, t2) => _PetCatCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PetCatCopyWith<$R, $In extends PetCat, $Out>
    implements PetCopyWith<$R, $In, $Out> {
  PetCopyWith<$R, Pet, Pet>? get friend;
  @override
  $R call({
    String? type,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? schemaVersion,
    String? nickname,
    PetStatus? status,
    int? mewCount,
    Pet? friend,
  });
  PetCatCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PetCatCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, PetCat, $Out>
    implements PetCatCopyWith<$R, PetCat, $Out> {
  _PetCatCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PetCat> $mapper = PetCatMapper.ensureInitialized();
  @override
  PetCopyWith<$R, Pet, Pet>? get friend =>
      $value.friend?.copyWith.$chain((v) => call(friend: v));
  @override
  $R call({
    String? type,
    String? id,
    DateTime? createdAt,
    Object? updatedAt = $none,
    int? schemaVersion,
    Object? nickname = $none,
    Object? status = $none,
    int? mewCount,
    Object? friend = $none,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (schemaVersion != null) #schemaVersion: schemaVersion,
      if (nickname != $none) #nickname: nickname,
      if (status != $none) #status: status,
      if (mewCount != null) #mewCount: mewCount,
      if (friend != $none) #friend: friend,
    }),
  );
  @override
  PetCat $make(CopyWithData data) => PetCat(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    schemaVersion: data.get(#schemaVersion, or: $value.schemaVersion),
    nickname: data.get(#nickname, or: $value.nickname),
    status: data.get(#status, or: $value.status),
    mewCount: data.get(#mewCount, or: $value.mewCount),
    friend: data.get(#friend, or: $value.friend),
  );

  @override
  PetCatCopyWith<$R2, PetCat, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PetCatCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PetDogMapper extends SubClassMapperBase<PetDog> {
  PetDogMapper._();

  static PetDogMapper? _instance;
  static PetDogMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PetDogMapper._());
      PetMapper.ensureInitialized().addSubMapper(_instance!);
      PetStatusMapper.ensureInitialized();
      ToyMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PetDog';

  static String _$type(PetDog v) => v.type;
  static const Field<PetDog, String> _f$type = Field('type', _$type);
  static String _$id(PetDog v) => v.id;
  static const Field<PetDog, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(PetDog v) => v.createdAt;
  static const Field<PetDog, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static DateTime? _$updatedAt(PetDog v) => v.updatedAt;
  static const Field<PetDog, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$schemaVersion(PetDog v) => v.schemaVersion;
  static const Field<PetDog, int> _f$schemaVersion = Field(
    'schemaVersion',
    _$schemaVersion,
    key: r'schema_version',
  );
  static String? _$nickname(PetDog v) => v.nickname;
  static const Field<PetDog, String> _f$nickname = Field(
    'nickname',
    _$nickname,
  );
  static PetStatus? _$status(PetDog v) => v.status;
  static const Field<PetDog, PetStatus> _f$status = Field('status', _$status);
  static String _$barkSound(PetDog v) => v.barkSound;
  static const Field<PetDog, String> _f$barkSound = Field(
    'barkSound',
    _$barkSound,
    key: r'bark_sound',
  );
  static Toy? _$toy(PetDog v) => v.toy;
  static const Field<PetDog, Toy> _f$toy = Field('toy', _$toy);

  @override
  final MappableFields<PetDog> fields = const {
    #type: _f$type,
    #id: _f$id,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #schemaVersion: _f$schemaVersion,
    #nickname: _f$nickname,
    #status: _f$status,
    #barkSound: _f$barkSound,
    #toy: _f$toy,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'dog';
  @override
  late final ClassMapperBase superMapper = PetMapper.ensureInitialized();

  static PetDog _instantiate(DecodingData data) {
    return PetDog(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      updatedAt: data.dec(_f$updatedAt),
      schemaVersion: data.dec(_f$schemaVersion),
      nickname: data.dec(_f$nickname),
      status: data.dec(_f$status),
      barkSound: data.dec(_f$barkSound),
      toy: data.dec(_f$toy),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PetDog fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PetDog>(map);
  }

  static PetDog fromJsonString(String json) {
    return ensureInitialized().decodeJson<PetDog>(json);
  }
}

mixin PetDogMappable {
  String toJsonString() {
    return PetDogMapper.ensureInitialized().encodeJson<PetDog>(this as PetDog);
  }

  Map<String, dynamic> toJson() {
    return PetDogMapper.ensureInitialized().encodeMap<PetDog>(this as PetDog);
  }

  PetDogCopyWith<PetDog, PetDog, PetDog> get copyWith =>
      _PetDogCopyWithImpl<PetDog, PetDog>(this as PetDog, $identity, $identity);
  @override
  String toString() {
    return PetDogMapper.ensureInitialized().stringifyValue(this as PetDog);
  }

  @override
  bool operator ==(Object other) {
    return PetDogMapper.ensureInitialized().equalsValue(this as PetDog, other);
  }

  @override
  int get hashCode {
    return PetDogMapper.ensureInitialized().hashValue(this as PetDog);
  }
}

extension PetDogValueCopy<$R, $Out> on ObjectCopyWith<$R, PetDog, $Out> {
  PetDogCopyWith<$R, PetDog, $Out> get $asPetDog =>
      $base.as((v, t, t2) => _PetDogCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PetDogCopyWith<$R, $In extends PetDog, $Out>
    implements PetCopyWith<$R, $In, $Out> {
  ToyCopyWith<$R, Toy, Toy>? get toy;
  @override
  $R call({
    String? type,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? schemaVersion,
    String? nickname,
    PetStatus? status,
    String? barkSound,
    Toy? toy,
  });
  PetDogCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PetDogCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, PetDog, $Out>
    implements PetDogCopyWith<$R, PetDog, $Out> {
  _PetDogCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PetDog> $mapper = PetDogMapper.ensureInitialized();
  @override
  ToyCopyWith<$R, Toy, Toy>? get toy =>
      $value.toy?.copyWith.$chain((v) => call(toy: v));
  @override
  $R call({
    String? type,
    String? id,
    DateTime? createdAt,
    Object? updatedAt = $none,
    int? schemaVersion,
    Object? nickname = $none,
    Object? status = $none,
    String? barkSound,
    Object? toy = $none,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (schemaVersion != null) #schemaVersion: schemaVersion,
      if (nickname != $none) #nickname: nickname,
      if (status != $none) #status: status,
      if (barkSound != null) #barkSound: barkSound,
      if (toy != $none) #toy: toy,
    }),
  );
  @override
  PetDog $make(CopyWithData data) => PetDog(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    schemaVersion: data.get(#schemaVersion, or: $value.schemaVersion),
    nickname: data.get(#nickname, or: $value.nickname),
    status: data.get(#status, or: $value.status),
    barkSound: data.get(#barkSound, or: $value.barkSound),
    toy: data.get(#toy, or: $value.toy),
  );

  @override
  PetDogCopyWith<$R2, PetDog, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _PetDogCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PetRobotMapper extends SubClassMapperBase<PetRobot> {
  PetRobotMapper._();

  static PetRobotMapper? _instance;
  static PetRobotMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PetRobotMapper._());
      PetMapper.ensureInitialized().addSubMapper(_instance!);
      PetStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PetRobot';

  static String _$type(PetRobot v) => v.type;
  static const Field<PetRobot, String> _f$type = Field('type', _$type);
  static DateTime? _$updatedAt(PetRobot v) => v.updatedAt;
  static const Field<PetRobot, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
  );
  static int _$schemaVersion(PetRobot v) => v.schemaVersion;
  static const Field<PetRobot, int> _f$schemaVersion = Field(
    'schemaVersion',
    _$schemaVersion,
    key: r'schema_version',
  );
  static String? _$nickname(PetRobot v) => v.nickname;
  static const Field<PetRobot, String> _f$nickname = Field(
    'nickname',
    _$nickname,
  );
  static PetStatus? _$status(PetRobot v) => v.status;
  static const Field<PetRobot, PetStatus> _f$status = Field('status', _$status);
  static int _$battery(PetRobot v) => v.battery;
  static const Field<PetRobot, int> _f$battery = Field('battery', _$battery);

  @override
  final MappableFields<PetRobot> fields = const {
    #type: _f$type,
    #updatedAt: _f$updatedAt,
    #schemaVersion: _f$schemaVersion,
    #nickname: _f$nickname,
    #status: _f$status,
    #battery: _f$battery,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'robot';
  @override
  late final ClassMapperBase superMapper = PetMapper.ensureInitialized();

  static PetRobot _instantiate(DecodingData data) {
    return PetRobot(
      type: data.dec(_f$type),
      updatedAt: data.dec(_f$updatedAt),
      schemaVersion: data.dec(_f$schemaVersion),
      nickname: data.dec(_f$nickname),
      status: data.dec(_f$status),
      battery: data.dec(_f$battery),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PetRobot fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PetRobot>(map);
  }

  static PetRobot fromJsonString(String json) {
    return ensureInitialized().decodeJson<PetRobot>(json);
  }
}

mixin PetRobotMappable {
  String toJsonString() {
    return PetRobotMapper.ensureInitialized().encodeJson<PetRobot>(
      this as PetRobot,
    );
  }

  Map<String, dynamic> toJson() {
    return PetRobotMapper.ensureInitialized().encodeMap<PetRobot>(
      this as PetRobot,
    );
  }

  PetRobotCopyWith<PetRobot, PetRobot, PetRobot> get copyWith =>
      _PetRobotCopyWithImpl<PetRobot, PetRobot>(
        this as PetRobot,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PetRobotMapper.ensureInitialized().stringifyValue(this as PetRobot);
  }

  @override
  bool operator ==(Object other) {
    return PetRobotMapper.ensureInitialized().equalsValue(
      this as PetRobot,
      other,
    );
  }

  @override
  int get hashCode {
    return PetRobotMapper.ensureInitialized().hashValue(this as PetRobot);
  }
}

extension PetRobotValueCopy<$R, $Out> on ObjectCopyWith<$R, PetRobot, $Out> {
  PetRobotCopyWith<$R, PetRobot, $Out> get $asPetRobot =>
      $base.as((v, t, t2) => _PetRobotCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PetRobotCopyWith<$R, $In extends PetRobot, $Out>
    implements PetCopyWith<$R, $In, $Out> {
  @override
  $R call({
    String? type,
    DateTime? updatedAt,
    int? schemaVersion,
    String? nickname,
    PetStatus? status,
    int? battery,
  });
  PetRobotCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PetRobotCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PetRobot, $Out>
    implements PetRobotCopyWith<$R, PetRobot, $Out> {
  _PetRobotCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PetRobot> $mapper =
      PetRobotMapper.ensureInitialized();
  @override
  $R call({
    String? type,
    Object? updatedAt = $none,
    int? schemaVersion,
    Object? nickname = $none,
    Object? status = $none,
    int? battery,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (schemaVersion != null) #schemaVersion: schemaVersion,
      if (nickname != $none) #nickname: nickname,
      if (status != $none) #status: status,
      if (battery != null) #battery: battery,
    }),
  );
  @override
  PetRobot $make(CopyWithData data) => PetRobot(
    type: data.get(#type, or: $value.type),
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    schemaVersion: data.get(#schemaVersion, or: $value.schemaVersion),
    nickname: data.get(#nickname, or: $value.nickname),
    status: data.get(#status, or: $value.status),
    battery: data.get(#battery, or: $value.battery),
  );

  @override
  PetRobotCopyWith<$R2, PetRobot, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PetRobotCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

