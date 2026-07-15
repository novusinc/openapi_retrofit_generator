// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'message_event.dart';

class MessageEventMapper extends ClassMapperBase<MessageEvent> {
  MessageEventMapper._();

  static MessageEventMapper? _instance;
  static MessageEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MessageEventMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MessageEvent';

  static String _$id(MessageEvent v) => v.id;
  static const Field<MessageEvent, String> _f$id = Field('id', _$id);
  static DateTime _$createdAt(MessageEvent v) => v.createdAt;
  static const Field<MessageEvent, DateTime> _f$createdAt = Field(
    'createdAt',
    _$createdAt,
    key: r'created_at',
  );
  static String _$text(MessageEvent v) => v.text;
  static const Field<MessageEvent, String> _f$text = Field('text', _$text);
  static String _$type(MessageEvent v) => v.type;
  static const Field<MessageEvent, String> _f$type = Field(
    'type',
    _$type,
    opt: true,
    def: 'message',
  );

  @override
  final MappableFields<MessageEvent> fields = const {
    #id: _f$id,
    #createdAt: _f$createdAt,
    #text: _f$text,
    #type: _f$type,
  };

  static MessageEvent _instantiate(DecodingData data) {
    return MessageEvent(
      id: data.dec(_f$id),
      createdAt: data.dec(_f$createdAt),
      text: data.dec(_f$text),
      type: data.dec(_f$type),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MessageEvent fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MessageEvent>(map);
  }

  static MessageEvent fromJsonString(String json) {
    return ensureInitialized().decodeJson<MessageEvent>(json);
  }
}

mixin MessageEventMappable {
  String toJsonString() {
    return MessageEventMapper.ensureInitialized().encodeJson<MessageEvent>(
      this as MessageEvent,
    );
  }

  Map<String, dynamic> toJson() {
    return MessageEventMapper.ensureInitialized().encodeMap<MessageEvent>(
      this as MessageEvent,
    );
  }

  MessageEventCopyWith<MessageEvent, MessageEvent, MessageEvent> get copyWith =>
      _MessageEventCopyWithImpl<MessageEvent, MessageEvent>(
        this as MessageEvent,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MessageEventMapper.ensureInitialized().stringifyValue(
      this as MessageEvent,
    );
  }

  @override
  bool operator ==(Object other) {
    return MessageEventMapper.ensureInitialized().equalsValue(
      this as MessageEvent,
      other,
    );
  }

  @override
  int get hashCode {
    return MessageEventMapper.ensureInitialized().hashValue(
      this as MessageEvent,
    );
  }
}

extension MessageEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MessageEvent, $Out> {
  MessageEventCopyWith<$R, MessageEvent, $Out> get $asMessageEvent =>
      $base.as((v, t, t2) => _MessageEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MessageEventCopyWith<$R, $In extends MessageEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, DateTime? createdAt, String? text, String? type});
  MessageEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MessageEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MessageEvent, $Out>
    implements MessageEventCopyWith<$R, MessageEvent, $Out> {
  _MessageEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MessageEvent> $mapper =
      MessageEventMapper.ensureInitialized();
  @override
  $R call({String? id, DateTime? createdAt, String? text, String? type}) =>
      $apply(
        FieldCopyWithData({
          if (id != null) #id: id,
          if (createdAt != null) #createdAt: createdAt,
          if (text != null) #text: text,
          if (type != null) #type: type,
        }),
      );
  @override
  MessageEvent $make(CopyWithData data) => MessageEvent(
    id: data.get(#id, or: $value.id),
    createdAt: data.get(#createdAt, or: $value.createdAt),
    text: data.get(#text, or: $value.text),
    type: data.get(#type, or: $value.type),
  );

  @override
  MessageEventCopyWith<$R2, MessageEvent, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MessageEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

