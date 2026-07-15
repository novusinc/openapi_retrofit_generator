// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'robot.dart';

class RobotMapper extends ClassMapperBase<Robot> {
  RobotMapper._();

  static RobotMapper? _instance;
  static RobotMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RobotMapper._());
      PetStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Robot';

  static DateTime? _$updatedAt(Robot v) => v.updatedAt;
  static const Field<Robot, DateTime> _f$updatedAt = Field(
    'updatedAt',
    _$updatedAt,
    key: r'updated_at',
    opt: true,
  );
  static String? _$nickname(Robot v) => v.nickname;
  static const Field<Robot, String> _f$nickname = Field(
    'nickname',
    _$nickname,
    opt: true,
  );
  static PetStatus? _$status(Robot v) => v.status;
  static const Field<Robot, PetStatus> _f$status = Field(
    'status',
    _$status,
    opt: true,
  );
  static String _$type(Robot v) => v.type;
  static const Field<Robot, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'robot',
  );
  static int _$schemaVersion(Robot v) => v.schemaVersion;
  static const Field<Robot, int> _f$schemaVersion = Field(
    'schemaVersion',
    _$schemaVersion,
    key: r'schema_version',
    opt: true,
    def: 1,
  );
  static int _$battery(Robot v) => v.battery;
  static const Field<Robot, int> _f$battery = Field(
    'battery',
    _$battery,
    opt: true,
    def: 100,
  );

  @override
  final MappableFields<Robot> fields = const {
    #updatedAt: _f$updatedAt,
    #nickname: _f$nickname,
    #status: _f$status,
    #type: _f$type,
    #schemaVersion: _f$schemaVersion,
    #battery: _f$battery,
  };

  static Robot _instantiate(DecodingData data) {
    return Robot(
      updatedAt: data.dec(_f$updatedAt),
      nickname: data.dec(_f$nickname),
      status: data.dec(_f$status),
      type: data.dec(_f$type),
      schemaVersion: data.dec(_f$schemaVersion),
      battery: data.dec(_f$battery),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Robot fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Robot>(map);
  }

  static Robot fromJsonString(String json) {
    return ensureInitialized().decodeJson<Robot>(json);
  }
}

mixin RobotMappable {
  String toJsonString() {
    return RobotMapper.ensureInitialized().encodeJson<Robot>(this as Robot);
  }

  Map<String, dynamic> toJson() {
    return RobotMapper.ensureInitialized().encodeMap<Robot>(this as Robot);
  }

  RobotCopyWith<Robot, Robot, Robot> get copyWith =>
      _RobotCopyWithImpl<Robot, Robot>(this as Robot, $identity, $identity);
  @override
  String toString() {
    return RobotMapper.ensureInitialized().stringifyValue(this as Robot);
  }

  @override
  bool operator ==(Object other) {
    return RobotMapper.ensureInitialized().equalsValue(this as Robot, other);
  }

  @override
  int get hashCode {
    return RobotMapper.ensureInitialized().hashValue(this as Robot);
  }
}

extension RobotValueCopy<$R, $Out> on ObjectCopyWith<$R, Robot, $Out> {
  RobotCopyWith<$R, Robot, $Out> get $asRobot =>
      $base.as((v, t, t2) => _RobotCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RobotCopyWith<$R, $In extends Robot, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    DateTime? updatedAt,
    String? nickname,
    PetStatus? status,
    String? type,
    int? schemaVersion,
    int? battery,
  });
  RobotCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RobotCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Robot, $Out>
    implements RobotCopyWith<$R, Robot, $Out> {
  _RobotCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Robot> $mapper = RobotMapper.ensureInitialized();
  @override
  $R call({
    Object? updatedAt = $none,
    Object? nickname = $none,
    Object? status = $none,
    String? type,
    int? schemaVersion,
    int? battery,
  }) => $apply(
    FieldCopyWithData({
      if (updatedAt != $none) #updatedAt: updatedAt,
      if (nickname != $none) #nickname: nickname,
      if (status != $none) #status: status,
      if (type != null) #type: type,
      if (schemaVersion != null) #schemaVersion: schemaVersion,
      if (battery != null) #battery: battery,
    }),
  );
  @override
  Robot $make(CopyWithData data) => Robot(
    updatedAt: data.get(#updatedAt, or: $value.updatedAt),
    nickname: data.get(#nickname, or: $value.nickname),
    status: data.get(#status, or: $value.status),
    type: data.get(#type, or: $value.type),
    schemaVersion: data.get(#schemaVersion, or: $value.schemaVersion),
    battery: data.get(#battery, or: $value.battery),
  );

  @override
  RobotCopyWith<$R2, Robot, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RobotCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

