// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'presence_event.dart';

class PresenceEventMapper extends ClassMapperBase<PresenceEvent> {
  PresenceEventMapper._();

  static PresenceEventMapper? _instance;
  static PresenceEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PresenceEventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PresenceEvent';

  static String _$id(PresenceEvent v) => v.id;
  static const Field<PresenceEvent, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(PresenceEvent v) => v.createdAt;
  static const Field<PresenceEvent, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String _$type(PresenceEvent v) => v.type;
  static const Field<PresenceEvent, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'presence',
  );
  static bool _$online(PresenceEvent v) => v.online;
  static const Field<PresenceEvent, bool> _f$online = Field(
    'online',
    _$online,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<PresenceEvent> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #type: _f$type,
    #online: _f$online,
  };

  static PresenceEvent _instantiate(DecodingData data) {
    return PresenceEvent(
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      type: data.dec(_f$type),
      online: data.dec(_f$online),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PresenceEvent fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PresenceEvent>(map);
  }

  static PresenceEvent fromJsonString(String json) {
    return ensureInitialized().decodeJson<PresenceEvent>(json);
  }
}

mixin PresenceEventMappable {
  String toJsonString() {
    return PresenceEventMapper.ensureInitialized().encodeJson<PresenceEvent>(
      this as PresenceEvent,
    );
  }

  Map<String, dynamic> toJson() {
    return PresenceEventMapper.ensureInitialized().encodeMap<PresenceEvent>(
      this as PresenceEvent,
    );
  }

  PresenceEventCopyWith<PresenceEvent, PresenceEvent, PresenceEvent>
  get copyWith => _PresenceEventCopyWithImpl<PresenceEvent, PresenceEvent>(
    this as PresenceEvent,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return PresenceEventMapper.ensureInitialized().stringifyValue(
      this as PresenceEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return PresenceEventMapper.ensureInitialized().equalsValue(
      this as PresenceEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return PresenceEventMapper.ensureInitialized().hashValue(
      this as PresenceEvent,
    );
  }
}

extension PresenceEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PresenceEvent, $Out> {
  PresenceEventCopyWith<$R, PresenceEvent, $Out> get $asPresenceEvent =>
      $base.as((v, t, t2) => _PresenceEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PresenceEventCopyWith<$R, $In extends PresenceEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? createdAt, String? type, bool? online});
  PresenceEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PresenceEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PresenceEvent, $Out>
    implements PresenceEventCopyWith<$R, PresenceEvent, $Out> {
  _PresenceEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PresenceEvent> $mapper =
      PresenceEventMapper.ensureInitialized();
  @override
  $R call({String? id, DateTime? createdAt, String? type, bool? online}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (createdAt != null) #createdAt: createdAt,
          if (type != null) #type: type,
          if (online != null) #online: online,
        }),
      );
  @override
  PresenceEvent $make(CopyWithData data) => PresenceEvent(
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    type: data.get(#type, or: $value.type),
    online: data.get(#online, or: $value.online),
  );

  @override
  PresenceEventCopyWith<$R2, PresenceEvent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PresenceEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

