// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'ephemeral_event.dart';

class EphemeralEventMapper extends ClassMapperBase<EphemeralEvent> {
  EphemeralEventMapper._();

  static EphemeralEventMapper? _instance;
  static EphemeralEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EphemeralEventMapper._());
      EphemeralEventTypingMapper.ensureInitialized();
      EphemeralEventPresenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EphemeralEvent';

  @override
  final MappableFields<EphemeralEvent> fields = const {};

  static EphemeralEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'EphemeralEvent',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EphemeralEvent fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EphemeralEvent>(map);
  }

  static EphemeralEvent fromJsonString(String json) {
    return ensureInitialized().decodeJson<EphemeralEvent>(json);
  }
}

mixin EphemeralEventMappable {
  String toJsonString();
  Map<String, dynamic> toJson();
  EphemeralEventCopyWith<EphemeralEvent, EphemeralEvent, EphemeralEvent>
  get copyWith;
}

abstract class EphemeralEventCopyWith<$R, $In extends EphemeralEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  EphemeralEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class EphemeralEventTypingMapper
    extends SubClassMapperBase<EphemeralEventTyping> {
  EphemeralEventTypingMapper._();

  static EphemeralEventTypingMapper? _instance;
  static EphemeralEventTypingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EphemeralEventTypingMapper._());
      EphemeralEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'EphemeralEventTyping';

  static String _$type(EphemeralEventTyping v) => v.type;
  static const Field<EphemeralEventTyping, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$id(EphemeralEventTyping v) => v.id;
  static const Field<EphemeralEventTyping, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(EphemeralEventTyping v) => v.createdAt;
  static const Field<EphemeralEventTyping, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String? _$userId(EphemeralEventTyping v) => v.userId;
  static const Field<EphemeralEventTyping, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );

  @override
  final MappableFields<EphemeralEventTyping> fields = const {
    #type: _f$type,
    #id: _f$id,
    #createdAt: _f$createdAt,
    #userId: _f$userId,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'typing';
  @override
  late final ClassMapperBase superMapper =
      EphemeralEventMapper.ensureInitialized();

  static EphemeralEventTyping _instantiate(DecodingData data) {
    return EphemeralEventTyping(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      userId: data.dec(_f$userId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EphemeralEventTyping fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EphemeralEventTyping>(map);
  }

  static EphemeralEventTyping fromJsonString(String json) {
    return ensureInitialized().decodeJson<EphemeralEventTyping>(json);
  }
}

mixin EphemeralEventTypingMappable {
  String toJsonString() {
    return EphemeralEventTypingMapper.ensureInitialized()
        .encodeJson<EphemeralEventTyping>(this as EphemeralEventTyping);
  }

  Map<String, dynamic> toJson() {
    return EphemeralEventTypingMapper.ensureInitialized()
        .encodeMap<EphemeralEventTyping>(this as EphemeralEventTyping);
  }

  EphemeralEventTypingCopyWith<
    EphemeralEventTyping,
    EphemeralEventTyping,
    EphemeralEventTyping
  >
  get copyWith =>
      _EphemeralEventTypingCopyWithImpl<
        EphemeralEventTyping,
        EphemeralEventTyping
      >(this as EphemeralEventTyping, $identity, $identity);
  @override
  String toString() {
    return EphemeralEventTypingMapper.ensureInitialized().stringifyValue(
      this as EphemeralEventTyping,
    );
  }

  @override
  bool operator ==(Object other) {
    return EphemeralEventTypingMapper.ensureInitialized().equalsValue(
      this as EphemeralEventTyping,
      other,
    );
  }

  @override
  int get hashCode {
    return EphemeralEventTypingMapper.ensureInitialized().hashValue(
      this as EphemeralEventTyping,
    );
  }
}

extension EphemeralEventTypingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EphemeralEventTyping, $Out> {
  EphemeralEventTypingCopyWith<$R, EphemeralEventTyping, $Out>
  get $asEphemeralEventTyping => $base.as(
    (v, t, t2) => _EphemeralEventTypingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EphemeralEventTypingCopyWith<
  $R,
  $In extends EphemeralEventTyping,
  $Out
>
    implements EphemeralEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? id, DateTime? createdAt, String? userId});
  EphemeralEventTypingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EphemeralEventTypingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EphemeralEventTyping, $Out>
    implements EphemeralEventTypingCopyWith<$R, EphemeralEventTyping, $Out> {
  _EphemeralEventTypingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EphemeralEventTyping> $mapper =
      EphemeralEventTypingMapper.ensureInitialized();
  @override
  $R call({
    String? type,
    String? id,
    DateTime? createdAt,
    Object? userId = $none,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (userId != $none) #userId: userId,
    }),
  );
  @override
  EphemeralEventTyping $make(CopyWithData data) => EphemeralEventTyping(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    userId: data.get(#userId, or: $value.userId),
  );

  @override
  EphemeralEventTypingCopyWith<$R2, EphemeralEventTyping, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EphemeralEventTypingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EphemeralEventPresenceMapper
    extends SubClassMapperBase<EphemeralEventPresence> {
  EphemeralEventPresenceMapper._();

  static EphemeralEventPresenceMapper? _instance;
  static EphemeralEventPresenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EphemeralEventPresenceMapper._());
      EphemeralEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'EphemeralEventPresence';

  static String _$type(EphemeralEventPresence v) => v.type;
  static const Field<EphemeralEventPresence, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$id(EphemeralEventPresence v) => v.id;
  static const Field<EphemeralEventPresence, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(EphemeralEventPresence v) => v.createdAt;
  static const Field<EphemeralEventPresence, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static bool _$online(EphemeralEventPresence v) => v.online;
  static const Field<EphemeralEventPresence, bool> _f$online = Field(
    'online',
    _$online,
  );

  @override
  final MappableFields<EphemeralEventPresence> fields = const {
    #type: _f$type,
    #id: _f$id,
    #createdAt: _f$createdAt,
    #online: _f$online,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'presence';
  @override
  late final ClassMapperBase superMapper =
      EphemeralEventMapper.ensureInitialized();

  static EphemeralEventPresence _instantiate(DecodingData data) {
    return EphemeralEventPresence(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      online: data.dec(_f$online),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static EphemeralEventPresence fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EphemeralEventPresence>(map);
  }

  static EphemeralEventPresence fromJsonString(String json) {
    return ensureInitialized().decodeJson<EphemeralEventPresence>(json);
  }
}

mixin EphemeralEventPresenceMappable {
  String toJsonString() {
    return EphemeralEventPresenceMapper.ensureInitialized()
        .encodeJson<EphemeralEventPresence>(this as EphemeralEventPresence);
  }

  Map<String, dynamic> toJson() {
    return EphemeralEventPresenceMapper.ensureInitialized()
        .encodeMap<EphemeralEventPresence>(this as EphemeralEventPresence);
  }

  EphemeralEventPresenceCopyWith<
    EphemeralEventPresence,
    EphemeralEventPresence,
    EphemeralEventPresence
  >
  get copyWith =>
      _EphemeralEventPresenceCopyWithImpl<
        EphemeralEventPresence,
        EphemeralEventPresence
      >(this as EphemeralEventPresence, $identity, $identity);
  @override
  String toString() {
    return EphemeralEventPresenceMapper.ensureInitialized().stringifyValue(
      this as EphemeralEventPresence,
    );
  }

  @override
  bool operator ==(Object other) {
    return EphemeralEventPresenceMapper.ensureInitialized().equalsValue(
      this as EphemeralEventPresence,
      other,
    );
  }

  @override
  int get hashCode {
    return EphemeralEventPresenceMapper.ensureInitialized().hashValue(
      this as EphemeralEventPresence,
    );
  }
}

extension EphemeralEventPresenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, EphemeralEventPresence, $Out> {
  EphemeralEventPresenceCopyWith<$R, EphemeralEventPresence, $Out>
  get $asEphemeralEventPresence => $base.as(
    (v, t, t2) => _EphemeralEventPresenceCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class EphemeralEventPresenceCopyWith<
  $R,
  $In extends EphemeralEventPresence,
  $Out
>
    implements EphemeralEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? id, DateTime? createdAt, bool? online});
  EphemeralEventPresenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _EphemeralEventPresenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, EphemeralEventPresence, $Out>
    implements
        EphemeralEventPresenceCopyWith<$R, EphemeralEventPresence, $Out> {
  _EphemeralEventPresenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EphemeralEventPresence> $mapper =
      EphemeralEventPresenceMapper.ensureInitialized();
  @override
  $R call({String? type, String? id, DateTime? createdAt, bool? online}) =>
      $apply(
        FieldCopyWithData({
          if (type != null) #type: type,
          if (id != null) #id: id,
          if (createdAt != null) #createdAt: createdAt,
          if (online != null) #online: online,
        }),
      );
  @override
  EphemeralEventPresence $make(CopyWithData data) => EphemeralEventPresence(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    online: data.get(#online, or: $value.online),
  );

  @override
  EphemeralEventPresenceCopyWith<$R2, EphemeralEventPresence, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _EphemeralEventPresenceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

