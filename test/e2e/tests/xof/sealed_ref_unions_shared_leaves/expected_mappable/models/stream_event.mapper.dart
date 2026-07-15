// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'stream_event.dart';

class StreamEventMapper extends ClassMapperBase<StreamEvent> {
  StreamEventMapper._();

  static StreamEventMapper? _instance;
  static StreamEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StreamEventMapper._());
      StreamEventMessageMapper.ensureInitialized();
      StreamEventTypingMapper.ensureInitialized();
      StreamEventPresenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'StreamEvent';

  @override
  final MappableFields<StreamEvent> fields = const {};

  static StreamEvent _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'StreamEvent',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StreamEvent fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StreamEvent>(map);
  }

  static StreamEvent fromJsonString(String json) {
    return ensureInitialized().decodeJson<StreamEvent>(json);
  }
}

mixin StreamEventMappable {
  String toJsonString();
  Map<String, dynamic> toJson();
  StreamEventCopyWith<StreamEvent, StreamEvent, StreamEvent> get copyWith;
}

abstract class StreamEventCopyWith<$R, $In extends StreamEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  StreamEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class StreamEventMessageMapper extends SubClassMapperBase<StreamEventMessage> {
  StreamEventMessageMapper._();

  static StreamEventMessageMapper? _instance;
  static StreamEventMessageMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StreamEventMessageMapper._());
      StreamEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StreamEventMessage';

  static String _$type(StreamEventMessage v) => v.type;
  static const Field<StreamEventMessage, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$id(StreamEventMessage v) => v.id;
  static const Field<StreamEventMessage, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(StreamEventMessage v) => v.createdAt;
  static const Field<StreamEventMessage, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String _$text(StreamEventMessage v) => v.text;
  static const Field<StreamEventMessage, String> _f$text = Field(
    'text',
    _$text,
  );

  @override
  final MappableFields<StreamEventMessage> fields = const {
    #type: _f$type,
    #id: _f$id,
    #createdAt: _f$createdAt,
    #text: _f$text,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'message';
  @override
  late final ClassMapperBase superMapper =
      StreamEventMapper.ensureInitialized();

  static StreamEventMessage _instantiate(DecodingData data) {
    return StreamEventMessage(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      text: data.dec(_f$text),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StreamEventMessage fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StreamEventMessage>(map);
  }

  static StreamEventMessage fromJsonString(String json) {
    return ensureInitialized().decodeJson<StreamEventMessage>(json);
  }
}

mixin StreamEventMessageMappable {
  String toJsonString() {
    return StreamEventMessageMapper.ensureInitialized()
        .encodeJson<StreamEventMessage>(this as StreamEventMessage);
  }

  Map<String, dynamic> toJson() {
    return StreamEventMessageMapper.ensureInitialized()
        .encodeMap<StreamEventMessage>(this as StreamEventMessage);
  }

  StreamEventMessageCopyWith<
    StreamEventMessage,
    StreamEventMessage,
    StreamEventMessage
  >
  get copyWith =>
      _StreamEventMessageCopyWithImpl<StreamEventMessage, StreamEventMessage>(
        this as StreamEventMessage,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return StreamEventMessageMapper.ensureInitialized().stringifyValue(
      this as StreamEventMessage,
    );
  }

  @override
  bool operator ==(Object other) {
    return StreamEventMessageMapper.ensureInitialized().equalsValue(
      this as StreamEventMessage,
      other,
    );
  }

  @override
  int get hashCode {
    return StreamEventMessageMapper.ensureInitialized().hashValue(
      this as StreamEventMessage,
    );
  }
}

extension StreamEventMessageValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StreamEventMessage, $Out> {
  StreamEventMessageCopyWith<$R, StreamEventMessage, $Out>
  get $asStreamEventMessage => $base.as(
    (v, t, t2) => _StreamEventMessageCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class StreamEventMessageCopyWith<
  $R,
  $In extends StreamEventMessage,
  $Out
>
    implements StreamEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? id, DateTime? createdAt, String? text});
  StreamEventMessageCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StreamEventMessageCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StreamEventMessage, $Out>
    implements StreamEventMessageCopyWith<$R, StreamEventMessage, $Out> {
  _StreamEventMessageCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StreamEventMessage> $mapper =
      StreamEventMessageMapper.ensureInitialized();
  @override
  $R call({String? type, String? id, DateTime? createdAt, String? text}) =>
      $apply(
        FieldCopyWithData({
          if (type != null) #type: type,
          if (id != null) #id: id,
          if (createdAt != null) #createdAt: createdAt,
          if (text != null) #text: text,
        }),
      );
  @override
  StreamEventMessage $make(CopyWithData data) => StreamEventMessage(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    text: data.get(#text, or: $value.text),
  );

  @override
  StreamEventMessageCopyWith<$R2, StreamEventMessage, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _StreamEventMessageCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class StreamEventTypingMapper extends SubClassMapperBase<StreamEventTyping> {
  StreamEventTypingMapper._();

  static StreamEventTypingMapper? _instance;
  static StreamEventTypingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StreamEventTypingMapper._());
      StreamEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StreamEventTyping';

  static String _$type(StreamEventTyping v) => v.type;
  static const Field<StreamEventTyping, String> _f$type = Field('type', _$type);
  static String _$id(StreamEventTyping v) => v.id;
  static const Field<StreamEventTyping, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(StreamEventTyping v) => v.createdAt;
  static const Field<StreamEventTyping, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String? _$userId(StreamEventTyping v) => v.userId;
  static const Field<StreamEventTyping, String> _f$userId = Field(
    'userId',
    _$userId,
    key: r'user_id',
  );

  @override
  final MappableFields<StreamEventTyping> fields = const {
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
      StreamEventMapper.ensureInitialized();

  static StreamEventTyping _instantiate(DecodingData data) {
    return StreamEventTyping(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      userId: data.dec(_f$userId),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StreamEventTyping fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StreamEventTyping>(map);
  }

  static StreamEventTyping fromJsonString(String json) {
    return ensureInitialized().decodeJson<StreamEventTyping>(json);
  }
}

mixin StreamEventTypingMappable {
  String toJsonString() {
    return StreamEventTypingMapper.ensureInitialized()
        .encodeJson<StreamEventTyping>(this as StreamEventTyping);
  }

  Map<String, dynamic> toJson() {
    return StreamEventTypingMapper.ensureInitialized()
        .encodeMap<StreamEventTyping>(this as StreamEventTyping);
  }

  StreamEventTypingCopyWith<
    StreamEventTyping,
    StreamEventTyping,
    StreamEventTyping
  >
  get copyWith =>
      _StreamEventTypingCopyWithImpl<StreamEventTyping, StreamEventTyping>(
        this as StreamEventTyping,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return StreamEventTypingMapper.ensureInitialized().stringifyValue(
      this as StreamEventTyping,
    );
  }

  @override
  bool operator ==(Object other) {
    return StreamEventTypingMapper.ensureInitialized().equalsValue(
      this as StreamEventTyping,
      other,
    );
  }

  @override
  int get hashCode {
    return StreamEventTypingMapper.ensureInitialized().hashValue(
      this as StreamEventTyping,
    );
  }
}

extension StreamEventTypingValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StreamEventTyping, $Out> {
  StreamEventTypingCopyWith<$R, StreamEventTyping, $Out>
  get $asStreamEventTyping => $base.as(
    (v, t, t2) => _StreamEventTypingCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class StreamEventTypingCopyWith<
  $R,
  $In extends StreamEventTyping,
  $Out
>
    implements StreamEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? id, DateTime? createdAt, String? userId});
  StreamEventTypingCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StreamEventTypingCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StreamEventTyping, $Out>
    implements StreamEventTypingCopyWith<$R, StreamEventTyping, $Out> {
  _StreamEventTypingCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StreamEventTyping> $mapper =
      StreamEventTypingMapper.ensureInitialized();
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
  StreamEventTyping $make(CopyWithData data) => StreamEventTyping(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    userId: data.get(#userId, or: $value.userId),
  );

  @override
  StreamEventTypingCopyWith<$R2, StreamEventTyping, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _StreamEventTypingCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class StreamEventPresenceMapper
    extends SubClassMapperBase<StreamEventPresence> {
  StreamEventPresenceMapper._();

  static StreamEventPresenceMapper? _instance;
  static StreamEventPresenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StreamEventPresenceMapper._());
      StreamEventMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'StreamEventPresence';

  static String _$type(StreamEventPresence v) => v.type;
  static const Field<StreamEventPresence, String> _f$type = Field(
    'type',
    _$type,
  );
  static String _$id(StreamEventPresence v) => v.id;
  static const Field<StreamEventPresence, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(StreamEventPresence v) => v.createdAt;
  static const Field<StreamEventPresence, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static bool _$online(StreamEventPresence v) => v.online;
  static const Field<StreamEventPresence, bool> _f$online = Field(
    'online',
    _$online,
  );

  @override
  final MappableFields<StreamEventPresence> fields = const {
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
      StreamEventMapper.ensureInitialized();

  static StreamEventPresence _instantiate(DecodingData data) {
    return StreamEventPresence(
      type: data.dec(_f$type),
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      online: data.dec(_f$online),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static StreamEventPresence fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StreamEventPresence>(map);
  }

  static StreamEventPresence fromJsonString(String json) {
    return ensureInitialized().decodeJson<StreamEventPresence>(json);
  }
}

mixin StreamEventPresenceMappable {
  String toJsonString() {
    return StreamEventPresenceMapper.ensureInitialized()
        .encodeJson<StreamEventPresence>(this as StreamEventPresence);
  }

  Map<String, dynamic> toJson() {
    return StreamEventPresenceMapper.ensureInitialized()
        .encodeMap<StreamEventPresence>(this as StreamEventPresence);
  }

  StreamEventPresenceCopyWith<
    StreamEventPresence,
    StreamEventPresence,
    StreamEventPresence
  >
  get copyWith =>
      _StreamEventPresenceCopyWithImpl<
        StreamEventPresence,
        StreamEventPresence
      >(this as StreamEventPresence, $identity, $identity);
  @override
  String toString() {
    return StreamEventPresenceMapper.ensureInitialized().stringifyValue(
      this as StreamEventPresence,
    );
  }

  @override
  bool operator ==(Object other) {
    return StreamEventPresenceMapper.ensureInitialized().equalsValue(
      this as StreamEventPresence,
      other,
    );
  }

  @override
  int get hashCode {
    return StreamEventPresenceMapper.ensureInitialized().hashValue(
      this as StreamEventPresence,
    );
  }
}

extension StreamEventPresenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StreamEventPresence, $Out> {
  StreamEventPresenceCopyWith<$R, StreamEventPresence, $Out>
  get $asStreamEventPresence => $base.as(
    (v, t, t2) => _StreamEventPresenceCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class StreamEventPresenceCopyWith<
  $R,
  $In extends StreamEventPresence,
  $Out
>
    implements StreamEventCopyWith<$R, $In, $Out> {
  @override
  $R call({String? type, String? id, DateTime? createdAt, bool? online});
  StreamEventPresenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _StreamEventPresenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StreamEventPresence, $Out>
    implements StreamEventPresenceCopyWith<$R, StreamEventPresence, $Out> {
  _StreamEventPresenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StreamEventPresence> $mapper =
      StreamEventPresenceMapper.ensureInitialized();
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
  StreamEventPresence $make(CopyWithData data) => StreamEventPresence(
    type: data.get(#type, or: $value.type),
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    online: data.get(#online, or: $value.online),
  );

  @override
  StreamEventPresenceCopyWith<$R2, StreamEventPresence, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _StreamEventPresenceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

