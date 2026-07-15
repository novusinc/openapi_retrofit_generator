// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'typing_event.dart';

class TypingEventMapper extends ClassMapperBase<TypingEvent> {
  TypingEventMapper._();

  static TypingEventMapper? _instance;
  static TypingEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TypingEventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TypingEvent';

  static String _$id(TypingEvent v) => v.id;
  static const Field<TypingEvent, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(TypingEvent v) => v.createdAt;
  static const Field<TypingEvent, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String? _$userId(TypingEvent v) => v.userId;
  static const Field<TypingEvent, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
    opt: true,
  );
  static String _$type(TypingEvent v) => v.type;
  static const Field<TypingEvent, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'typing',
  );

  @override
  final MappableFields<TypingEvent> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #userId: _f$userId,
    #type: _f$type,
  };

  static TypingEvent _instantiate(DecodingData data) {
    return TypingEvent(
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      userId: data.dec(_f$userId),
      type: data.dec(_f$type),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TypingEvent fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TypingEvent>(map);
  }

  static TypingEvent fromJsonString(String json) {
    return ensureInitialized().decodeJson<TypingEvent>(json);
  }
}

mixin TypingEventMappable {
  String toJsonString() {
    return TypingEventMapper.ensureInitialized().encodeJson<TypingEvent>(
      this as TypingEvent,
    );
  }

  Map<String, dynamic> toJson() {
    return TypingEventMapper.ensureInitialized().encodeMap<TypingEvent>(
      this as TypingEvent,
    );
  }

  TypingEventCopyWith<TypingEvent, TypingEvent, TypingEvent> get copyWith =>
      _TypingEventCopyWithImpl<TypingEvent, TypingEvent>(
        this as TypingEvent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TypingEventMapper.ensureInitialized().stringifyValue(
      this as TypingEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return TypingEventMapper.ensureInitialized().equalsValue(
      this as TypingEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return TypingEventMapper.ensureInitialized().hashValue(this as TypingEvent);
  }
}

extension TypingEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TypingEvent, $Out> {
  TypingEventCopyWith<$R, TypingEvent, $Out> get $asTypingEvent =>
      $base.as((v, t, t2) => _TypingEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TypingEventCopyWith<$R, $In extends TypingEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? createdAt, String? userId, String? type});
  TypingEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TypingEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TypingEvent, $Out>
    implements TypingEventCopyWith<$R, TypingEvent, $Out> {
  _TypingEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TypingEvent> $mapper =
      TypingEventMapper.ensureInitialized();
  @override
  $R call({
    String? id,
    DateTime? createdAt,
    Object? userId = $none,
    String? type,
  }) => $apply(
    FieldCopyWithData({
      if (id != null) #id: id,
      if (createdAt != null) #createdAt: createdAt,
      if (userId != $none) #userId: userId,
      if (type != null) #type: type,
    }),
  );
  @override
  TypingEvent $make(CopyWithData data) => TypingEvent(
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    userId: data.get(#userId, or: $value.userId),
    type: data.get(#type, or: $value.type),
  );

  @override
  TypingEventCopyWith<$R2, TypingEvent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _TypingEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

