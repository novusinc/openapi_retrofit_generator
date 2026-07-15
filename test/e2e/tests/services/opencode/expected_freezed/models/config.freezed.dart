// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Config {

/// JSON schema reference for configuration validation
@JsonKey(name: '\$schema') String? get schema;/// Theme name to use for the interface
 String? get theme; KeybindsConfig? get keybinds;/// TUI specific settings
 ConfigTui? get tui;/// Command configuration, see https://opencode.ai/docs/commands
 Map<String, Command>? get command; ConfigWatcher? get watcher; List<String>? get plugin; bool? get snapshot;/// Control sharing behavior:'manual' allows manual sharing via commands, 'auto' enables automatic sharing, 'disabled' disables all sharing
 ConfigShareShare? get share;/// @deprecated Use 'share' field instead. Share newly created sessions automatically
 bool? get autoshare;/// Automatically update to the latest version
 bool? get autoupdate;/// Disable providers that are loaded automatically
@JsonKey(name: 'disabled_providers') List<String>? get disabledProviders;/// Model to use in the format of provider/model, eg anthropic/claude-2
 String? get model;/// Small model to use for tasks like title generation in the format of provider/model
@JsonKey(name: 'small_model') String? get smallModel;/// Custom username to display in conversations instead of system username
 String? get username;/// @deprecated Use `agent` field instead.
 Map<String, AgentConfig>? get mode;/// Agent configuration, see https://opencode.ai/docs/agent
 Map<String, AgentConfig>? get agent;/// Custom provider configurations and model overrides
 Map<String, Provider>? get provider;/// MCP (Model Context Protocol) server configurations
 Map<String, Mcp>? get mcp; Map<String, Formatter>? get formatter; Map<String, Lsp>? get lsp;/// Additional instruction files or patterns to include
 List<String>? get instructions; LayoutConfig? get layout; ConfigPermission? get permission; Map<String, bool>? get tools; ConfigExperimental? get experimental;
/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfigCopyWith<Config> get copyWith => _$ConfigCopyWithImpl<Config>(this as Config, _$identity);

  /// Serializes this Config to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Config&&(identical(other.schema, schema) || other.schema == schema)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.keybinds, keybinds) || other.keybinds == keybinds)&&(identical(other.tui, tui) || other.tui == tui)&&const DeepCollectionEquality().equals(other.command, command)&&(identical(other.watcher, watcher) || other.watcher == watcher)&&const DeepCollectionEquality().equals(other.plugin, plugin)&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot)&&(identical(other.share, share) || other.share == share)&&(identical(other.autoshare, autoshare) || other.autoshare == autoshare)&&(identical(other.autoupdate, autoupdate) || other.autoupdate == autoupdate)&&const DeepCollectionEquality().equals(other.disabledProviders, disabledProviders)&&(identical(other.model, model) || other.model == model)&&(identical(other.smallModel, smallModel) || other.smallModel == smallModel)&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other.mode, mode)&&const DeepCollectionEquality().equals(other.agent, agent)&&const DeepCollectionEquality().equals(other.provider, provider)&&const DeepCollectionEquality().equals(other.mcp, mcp)&&const DeepCollectionEquality().equals(other.formatter, formatter)&&const DeepCollectionEquality().equals(other.lsp, lsp)&&const DeepCollectionEquality().equals(other.instructions, instructions)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other.tools, tools)&&(identical(other.experimental, experimental) || other.experimental == experimental));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,schema,theme,keybinds,tui,const DeepCollectionEquality().hash(command),watcher,const DeepCollectionEquality().hash(plugin),snapshot,share,autoshare,autoupdate,const DeepCollectionEquality().hash(disabledProviders),model,smallModel,username,const DeepCollectionEquality().hash(mode),const DeepCollectionEquality().hash(agent),const DeepCollectionEquality().hash(provider),const DeepCollectionEquality().hash(mcp),const DeepCollectionEquality().hash(formatter),const DeepCollectionEquality().hash(lsp),const DeepCollectionEquality().hash(instructions),layout,permission,const DeepCollectionEquality().hash(tools),experimental]);

@override
String toString() {
  return 'Config(schema: $schema, theme: $theme, keybinds: $keybinds, tui: $tui, command: $command, watcher: $watcher, plugin: $plugin, snapshot: $snapshot, share: $share, autoshare: $autoshare, autoupdate: $autoupdate, disabledProviders: $disabledProviders, model: $model, smallModel: $smallModel, username: $username, mode: $mode, agent: $agent, provider: $provider, mcp: $mcp, formatter: $formatter, lsp: $lsp, instructions: $instructions, layout: $layout, permission: $permission, tools: $tools, experimental: $experimental)';
}


}

/// @nodoc
abstract mixin class $ConfigCopyWith<$Res>  {
  factory $ConfigCopyWith(Config value, $Res Function(Config) _then) = _$ConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '\$schema') String? schema, String? theme, KeybindsConfig? keybinds, ConfigTui? tui, Map<String, Command>? command, ConfigWatcher? watcher, List<String>? plugin, bool? snapshot, ConfigShareShare? share, bool? autoshare, bool? autoupdate,@JsonKey(name: 'disabled_providers') List<String>? disabledProviders, String? model,@JsonKey(name: 'small_model') String? smallModel, String? username, Map<String, AgentConfig>? mode, Map<String, AgentConfig>? agent, Map<String, Provider>? provider, Map<String, Mcp>? mcp, Map<String, Formatter>? formatter, Map<String, Lsp>? lsp, List<String>? instructions, LayoutConfig? layout, ConfigPermission? permission, Map<String, bool>? tools, ConfigExperimental? experimental
});


$KeybindsConfigCopyWith<$Res>? get keybinds;$ConfigTuiCopyWith<$Res>? get tui;$ConfigWatcherCopyWith<$Res>? get watcher;$ConfigPermissionCopyWith<$Res>? get permission;$ConfigExperimentalCopyWith<$Res>? get experimental;

}
/// @nodoc
class _$ConfigCopyWithImpl<$Res>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._self, this._then);

  final Config _self;
  final $Res Function(Config) _then;

/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? schema = freezed,Object? theme = freezed,Object? keybinds = freezed,Object? tui = freezed,Object? command = freezed,Object? watcher = freezed,Object? plugin = freezed,Object? snapshot = freezed,Object? share = freezed,Object? autoshare = freezed,Object? autoupdate = freezed,Object? disabledProviders = freezed,Object? model = freezed,Object? smallModel = freezed,Object? username = freezed,Object? mode = freezed,Object? agent = freezed,Object? provider = freezed,Object? mcp = freezed,Object? formatter = freezed,Object? lsp = freezed,Object? instructions = freezed,Object? layout = freezed,Object? permission = freezed,Object? tools = freezed,Object? experimental = freezed,}) {
  return _then(_self.copyWith(
schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as String?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String?,keybinds: freezed == keybinds ? _self.keybinds : keybinds // ignore: cast_nullable_to_non_nullable
as KeybindsConfig?,tui: freezed == tui ? _self.tui : tui // ignore: cast_nullable_to_non_nullable
as ConfigTui?,command: freezed == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as Map<String, Command>?,watcher: freezed == watcher ? _self.watcher : watcher // ignore: cast_nullable_to_non_nullable
as ConfigWatcher?,plugin: freezed == plugin ? _self.plugin : plugin // ignore: cast_nullable_to_non_nullable
as List<String>?,snapshot: freezed == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as bool?,share: freezed == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as ConfigShareShare?,autoshare: freezed == autoshare ? _self.autoshare : autoshare // ignore: cast_nullable_to_non_nullable
as bool?,autoupdate: freezed == autoupdate ? _self.autoupdate : autoupdate // ignore: cast_nullable_to_non_nullable
as bool?,disabledProviders: freezed == disabledProviders ? _self.disabledProviders : disabledProviders // ignore: cast_nullable_to_non_nullable
as List<String>?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,smallModel: freezed == smallModel ? _self.smallModel : smallModel // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as Map<String, AgentConfig>?,agent: freezed == agent ? _self.agent : agent // ignore: cast_nullable_to_non_nullable
as Map<String, AgentConfig>?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Map<String, Provider>?,mcp: freezed == mcp ? _self.mcp : mcp // ignore: cast_nullable_to_non_nullable
as Map<String, Mcp>?,formatter: freezed == formatter ? _self.formatter : formatter // ignore: cast_nullable_to_non_nullable
as Map<String, Formatter>?,lsp: freezed == lsp ? _self.lsp : lsp // ignore: cast_nullable_to_non_nullable
as Map<String, Lsp>?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as List<String>?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as LayoutConfig?,permission: freezed == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as ConfigPermission?,tools: freezed == tools ? _self.tools : tools // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,experimental: freezed == experimental ? _self.experimental : experimental // ignore: cast_nullable_to_non_nullable
as ConfigExperimental?,
  ));
}
/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KeybindsConfigCopyWith<$Res>? get keybinds {
    if (_self.keybinds == null) {
    return null;
  }

  return $KeybindsConfigCopyWith<$Res>(_self.keybinds!, (value) {
    return _then(_self.copyWith(keybinds: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigTuiCopyWith<$Res>? get tui {
    if (_self.tui == null) {
    return null;
  }

  return $ConfigTuiCopyWith<$Res>(_self.tui!, (value) {
    return _then(_self.copyWith(tui: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigWatcherCopyWith<$Res>? get watcher {
    if (_self.watcher == null) {
    return null;
  }

  return $ConfigWatcherCopyWith<$Res>(_self.watcher!, (value) {
    return _then(_self.copyWith(watcher: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigPermissionCopyWith<$Res>? get permission {
    if (_self.permission == null) {
    return null;
  }

  return $ConfigPermissionCopyWith<$Res>(_self.permission!, (value) {
    return _then(_self.copyWith(permission: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigExperimentalCopyWith<$Res>? get experimental {
    if (_self.experimental == null) {
    return null;
  }

  return $ConfigExperimentalCopyWith<$Res>(_self.experimental!, (value) {
    return _then(_self.copyWith(experimental: value));
  });
}
}


/// Adds pattern-matching-related methods to [Config].
extension ConfigPatterns on Config {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Config value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Config() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Config value)  $default,){
final _that = this;
switch (_that) {
case _Config():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Config value)?  $default,){
final _that = this;
switch (_that) {
case _Config() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '\$schema')  String? schema,  String? theme,  KeybindsConfig? keybinds,  ConfigTui? tui,  Map<String, Command>? command,  ConfigWatcher? watcher,  List<String>? plugin,  bool? snapshot,  ConfigShareShare? share,  bool? autoshare,  bool? autoupdate, @JsonKey(name: 'disabled_providers')  List<String>? disabledProviders,  String? model, @JsonKey(name: 'small_model')  String? smallModel,  String? username,  Map<String, AgentConfig>? mode,  Map<String, AgentConfig>? agent,  Map<String, Provider>? provider,  Map<String, Mcp>? mcp,  Map<String, Formatter>? formatter,  Map<String, Lsp>? lsp,  List<String>? instructions,  LayoutConfig? layout,  ConfigPermission? permission,  Map<String, bool>? tools,  ConfigExperimental? experimental)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Config() when $default != null:
return $default(_that.schema,_that.theme,_that.keybinds,_that.tui,_that.command,_that.watcher,_that.plugin,_that.snapshot,_that.share,_that.autoshare,_that.autoupdate,_that.disabledProviders,_that.model,_that.smallModel,_that.username,_that.mode,_that.agent,_that.provider,_that.mcp,_that.formatter,_that.lsp,_that.instructions,_that.layout,_that.permission,_that.tools,_that.experimental);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '\$schema')  String? schema,  String? theme,  KeybindsConfig? keybinds,  ConfigTui? tui,  Map<String, Command>? command,  ConfigWatcher? watcher,  List<String>? plugin,  bool? snapshot,  ConfigShareShare? share,  bool? autoshare,  bool? autoupdate, @JsonKey(name: 'disabled_providers')  List<String>? disabledProviders,  String? model, @JsonKey(name: 'small_model')  String? smallModel,  String? username,  Map<String, AgentConfig>? mode,  Map<String, AgentConfig>? agent,  Map<String, Provider>? provider,  Map<String, Mcp>? mcp,  Map<String, Formatter>? formatter,  Map<String, Lsp>? lsp,  List<String>? instructions,  LayoutConfig? layout,  ConfigPermission? permission,  Map<String, bool>? tools,  ConfigExperimental? experimental)  $default,) {final _that = this;
switch (_that) {
case _Config():
return $default(_that.schema,_that.theme,_that.keybinds,_that.tui,_that.command,_that.watcher,_that.plugin,_that.snapshot,_that.share,_that.autoshare,_that.autoupdate,_that.disabledProviders,_that.model,_that.smallModel,_that.username,_that.mode,_that.agent,_that.provider,_that.mcp,_that.formatter,_that.lsp,_that.instructions,_that.layout,_that.permission,_that.tools,_that.experimental);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '\$schema')  String? schema,  String? theme,  KeybindsConfig? keybinds,  ConfigTui? tui,  Map<String, Command>? command,  ConfigWatcher? watcher,  List<String>? plugin,  bool? snapshot,  ConfigShareShare? share,  bool? autoshare,  bool? autoupdate, @JsonKey(name: 'disabled_providers')  List<String>? disabledProviders,  String? model, @JsonKey(name: 'small_model')  String? smallModel,  String? username,  Map<String, AgentConfig>? mode,  Map<String, AgentConfig>? agent,  Map<String, Provider>? provider,  Map<String, Mcp>? mcp,  Map<String, Formatter>? formatter,  Map<String, Lsp>? lsp,  List<String>? instructions,  LayoutConfig? layout,  ConfigPermission? permission,  Map<String, bool>? tools,  ConfigExperimental? experimental)?  $default,) {final _that = this;
switch (_that) {
case _Config() when $default != null:
return $default(_that.schema,_that.theme,_that.keybinds,_that.tui,_that.command,_that.watcher,_that.plugin,_that.snapshot,_that.share,_that.autoshare,_that.autoupdate,_that.disabledProviders,_that.model,_that.smallModel,_that.username,_that.mode,_that.agent,_that.provider,_that.mcp,_that.formatter,_that.lsp,_that.instructions,_that.layout,_that.permission,_that.tools,_that.experimental);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Config implements Config {
  const _Config({@JsonKey(name: '\$schema') this.schema, this.theme, this.keybinds, this.tui, final  Map<String, Command>? command, this.watcher, final  List<String>? plugin, this.snapshot, this.share, this.autoshare, this.autoupdate, @JsonKey(name: 'disabled_providers') final  List<String>? disabledProviders, this.model, @JsonKey(name: 'small_model') this.smallModel, this.username, final  Map<String, AgentConfig>? mode, final  Map<String, AgentConfig>? agent, final  Map<String, Provider>? provider, final  Map<String, Mcp>? mcp, final  Map<String, Formatter>? formatter, final  Map<String, Lsp>? lsp, final  List<String>? instructions, this.layout, this.permission, final  Map<String, bool>? tools, this.experimental}): _command = command,_plugin = plugin,_disabledProviders = disabledProviders,_mode = mode,_agent = agent,_provider = provider,_mcp = mcp,_formatter = formatter,_lsp = lsp,_instructions = instructions,_tools = tools;
  factory _Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

/// JSON schema reference for configuration validation
@override@JsonKey(name: '\$schema') final  String? schema;
/// Theme name to use for the interface
@override final  String? theme;
@override final  KeybindsConfig? keybinds;
/// TUI specific settings
@override final  ConfigTui? tui;
/// Command configuration, see https://opencode.ai/docs/commands
 final  Map<String, Command>? _command;
/// Command configuration, see https://opencode.ai/docs/commands
@override Map<String, Command>? get command {
  final value = _command;
  if (value == null) return null;
  if (_command is EqualUnmodifiableMapView) return _command;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  ConfigWatcher? watcher;
 final  List<String>? _plugin;
@override List<String>? get plugin {
  final value = _plugin;
  if (value == null) return null;
  if (_plugin is EqualUnmodifiableListView) return _plugin;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? snapshot;
/// Control sharing behavior:'manual' allows manual sharing via commands, 'auto' enables automatic sharing, 'disabled' disables all sharing
@override final  ConfigShareShare? share;
/// @deprecated Use 'share' field instead. Share newly created sessions automatically
@override final  bool? autoshare;
/// Automatically update to the latest version
@override final  bool? autoupdate;
/// Disable providers that are loaded automatically
 final  List<String>? _disabledProviders;
/// Disable providers that are loaded automatically
@override@JsonKey(name: 'disabled_providers') List<String>? get disabledProviders {
  final value = _disabledProviders;
  if (value == null) return null;
  if (_disabledProviders is EqualUnmodifiableListView) return _disabledProviders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Model to use in the format of provider/model, eg anthropic/claude-2
@override final  String? model;
/// Small model to use for tasks like title generation in the format of provider/model
@override@JsonKey(name: 'small_model') final  String? smallModel;
/// Custom username to display in conversations instead of system username
@override final  String? username;
/// @deprecated Use `agent` field instead.
 final  Map<String, AgentConfig>? _mode;
/// @deprecated Use `agent` field instead.
@override Map<String, AgentConfig>? get mode {
  final value = _mode;
  if (value == null) return null;
  if (_mode is EqualUnmodifiableMapView) return _mode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Agent configuration, see https://opencode.ai/docs/agent
 final  Map<String, AgentConfig>? _agent;
/// Agent configuration, see https://opencode.ai/docs/agent
@override Map<String, AgentConfig>? get agent {
  final value = _agent;
  if (value == null) return null;
  if (_agent is EqualUnmodifiableMapView) return _agent;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Custom provider configurations and model overrides
 final  Map<String, Provider>? _provider;
/// Custom provider configurations and model overrides
@override Map<String, Provider>? get provider {
  final value = _provider;
  if (value == null) return null;
  if (_provider is EqualUnmodifiableMapView) return _provider;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// MCP (Model Context Protocol) server configurations
 final  Map<String, Mcp>? _mcp;
/// MCP (Model Context Protocol) server configurations
@override Map<String, Mcp>? get mcp {
  final value = _mcp;
  if (value == null) return null;
  if (_mcp is EqualUnmodifiableMapView) return _mcp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Formatter>? _formatter;
@override Map<String, Formatter>? get formatter {
  final value = _formatter;
  if (value == null) return null;
  if (_formatter is EqualUnmodifiableMapView) return _formatter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, Lsp>? _lsp;
@override Map<String, Lsp>? get lsp {
  final value = _lsp;
  if (value == null) return null;
  if (_lsp is EqualUnmodifiableMapView) return _lsp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Additional instruction files or patterns to include
 final  List<String>? _instructions;
/// Additional instruction files or patterns to include
@override List<String>? get instructions {
  final value = _instructions;
  if (value == null) return null;
  if (_instructions is EqualUnmodifiableListView) return _instructions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  LayoutConfig? layout;
@override final  ConfigPermission? permission;
 final  Map<String, bool>? _tools;
@override Map<String, bool>? get tools {
  final value = _tools;
  if (value == null) return null;
  if (_tools is EqualUnmodifiableMapView) return _tools;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  ConfigExperimental? experimental;

/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfigCopyWith<_Config> get copyWith => __$ConfigCopyWithImpl<_Config>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Config&&(identical(other.schema, schema) || other.schema == schema)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.keybinds, keybinds) || other.keybinds == keybinds)&&(identical(other.tui, tui) || other.tui == tui)&&const DeepCollectionEquality().equals(other._command, _command)&&(identical(other.watcher, watcher) || other.watcher == watcher)&&const DeepCollectionEquality().equals(other._plugin, _plugin)&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot)&&(identical(other.share, share) || other.share == share)&&(identical(other.autoshare, autoshare) || other.autoshare == autoshare)&&(identical(other.autoupdate, autoupdate) || other.autoupdate == autoupdate)&&const DeepCollectionEquality().equals(other._disabledProviders, _disabledProviders)&&(identical(other.model, model) || other.model == model)&&(identical(other.smallModel, smallModel) || other.smallModel == smallModel)&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other._mode, _mode)&&const DeepCollectionEquality().equals(other._agent, _agent)&&const DeepCollectionEquality().equals(other._provider, _provider)&&const DeepCollectionEquality().equals(other._mcp, _mcp)&&const DeepCollectionEquality().equals(other._formatter, _formatter)&&const DeepCollectionEquality().equals(other._lsp, _lsp)&&const DeepCollectionEquality().equals(other._instructions, _instructions)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.permission, permission) || other.permission == permission)&&const DeepCollectionEquality().equals(other._tools, _tools)&&(identical(other.experimental, experimental) || other.experimental == experimental));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,schema,theme,keybinds,tui,const DeepCollectionEquality().hash(_command),watcher,const DeepCollectionEquality().hash(_plugin),snapshot,share,autoshare,autoupdate,const DeepCollectionEquality().hash(_disabledProviders),model,smallModel,username,const DeepCollectionEquality().hash(_mode),const DeepCollectionEquality().hash(_agent),const DeepCollectionEquality().hash(_provider),const DeepCollectionEquality().hash(_mcp),const DeepCollectionEquality().hash(_formatter),const DeepCollectionEquality().hash(_lsp),const DeepCollectionEquality().hash(_instructions),layout,permission,const DeepCollectionEquality().hash(_tools),experimental]);

@override
String toString() {
  return 'Config(schema: $schema, theme: $theme, keybinds: $keybinds, tui: $tui, command: $command, watcher: $watcher, plugin: $plugin, snapshot: $snapshot, share: $share, autoshare: $autoshare, autoupdate: $autoupdate, disabledProviders: $disabledProviders, model: $model, smallModel: $smallModel, username: $username, mode: $mode, agent: $agent, provider: $provider, mcp: $mcp, formatter: $formatter, lsp: $lsp, instructions: $instructions, layout: $layout, permission: $permission, tools: $tools, experimental: $experimental)';
}


}

/// @nodoc
abstract mixin class _$ConfigCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$ConfigCopyWith(_Config value, $Res Function(_Config) _then) = __$ConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '\$schema') String? schema, String? theme, KeybindsConfig? keybinds, ConfigTui? tui, Map<String, Command>? command, ConfigWatcher? watcher, List<String>? plugin, bool? snapshot, ConfigShareShare? share, bool? autoshare, bool? autoupdate,@JsonKey(name: 'disabled_providers') List<String>? disabledProviders, String? model,@JsonKey(name: 'small_model') String? smallModel, String? username, Map<String, AgentConfig>? mode, Map<String, AgentConfig>? agent, Map<String, Provider>? provider, Map<String, Mcp>? mcp, Map<String, Formatter>? formatter, Map<String, Lsp>? lsp, List<String>? instructions, LayoutConfig? layout, ConfigPermission? permission, Map<String, bool>? tools, ConfigExperimental? experimental
});


@override $KeybindsConfigCopyWith<$Res>? get keybinds;@override $ConfigTuiCopyWith<$Res>? get tui;@override $ConfigWatcherCopyWith<$Res>? get watcher;@override $ConfigPermissionCopyWith<$Res>? get permission;@override $ConfigExperimentalCopyWith<$Res>? get experimental;

}
/// @nodoc
class __$ConfigCopyWithImpl<$Res>
    implements _$ConfigCopyWith<$Res> {
  __$ConfigCopyWithImpl(this._self, this._then);

  final _Config _self;
  final $Res Function(_Config) _then;

/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? schema = freezed,Object? theme = freezed,Object? keybinds = freezed,Object? tui = freezed,Object? command = freezed,Object? watcher = freezed,Object? plugin = freezed,Object? snapshot = freezed,Object? share = freezed,Object? autoshare = freezed,Object? autoupdate = freezed,Object? disabledProviders = freezed,Object? model = freezed,Object? smallModel = freezed,Object? username = freezed,Object? mode = freezed,Object? agent = freezed,Object? provider = freezed,Object? mcp = freezed,Object? formatter = freezed,Object? lsp = freezed,Object? instructions = freezed,Object? layout = freezed,Object? permission = freezed,Object? tools = freezed,Object? experimental = freezed,}) {
  return _then(_Config(
schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as String?,theme: freezed == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as String?,keybinds: freezed == keybinds ? _self.keybinds : keybinds // ignore: cast_nullable_to_non_nullable
as KeybindsConfig?,tui: freezed == tui ? _self.tui : tui // ignore: cast_nullable_to_non_nullable
as ConfigTui?,command: freezed == command ? _self._command : command // ignore: cast_nullable_to_non_nullable
as Map<String, Command>?,watcher: freezed == watcher ? _self.watcher : watcher // ignore: cast_nullable_to_non_nullable
as ConfigWatcher?,plugin: freezed == plugin ? _self._plugin : plugin // ignore: cast_nullable_to_non_nullable
as List<String>?,snapshot: freezed == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as bool?,share: freezed == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as ConfigShareShare?,autoshare: freezed == autoshare ? _self.autoshare : autoshare // ignore: cast_nullable_to_non_nullable
as bool?,autoupdate: freezed == autoupdate ? _self.autoupdate : autoupdate // ignore: cast_nullable_to_non_nullable
as bool?,disabledProviders: freezed == disabledProviders ? _self._disabledProviders : disabledProviders // ignore: cast_nullable_to_non_nullable
as List<String>?,model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String?,smallModel: freezed == smallModel ? _self.smallModel : smallModel // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self._mode : mode // ignore: cast_nullable_to_non_nullable
as Map<String, AgentConfig>?,agent: freezed == agent ? _self._agent : agent // ignore: cast_nullable_to_non_nullable
as Map<String, AgentConfig>?,provider: freezed == provider ? _self._provider : provider // ignore: cast_nullable_to_non_nullable
as Map<String, Provider>?,mcp: freezed == mcp ? _self._mcp : mcp // ignore: cast_nullable_to_non_nullable
as Map<String, Mcp>?,formatter: freezed == formatter ? _self._formatter : formatter // ignore: cast_nullable_to_non_nullable
as Map<String, Formatter>?,lsp: freezed == lsp ? _self._lsp : lsp // ignore: cast_nullable_to_non_nullable
as Map<String, Lsp>?,instructions: freezed == instructions ? _self._instructions : instructions // ignore: cast_nullable_to_non_nullable
as List<String>?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as LayoutConfig?,permission: freezed == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as ConfigPermission?,tools: freezed == tools ? _self._tools : tools // ignore: cast_nullable_to_non_nullable
as Map<String, bool>?,experimental: freezed == experimental ? _self.experimental : experimental // ignore: cast_nullable_to_non_nullable
as ConfigExperimental?,
  ));
}

/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KeybindsConfigCopyWith<$Res>? get keybinds {
    if (_self.keybinds == null) {
    return null;
  }

  return $KeybindsConfigCopyWith<$Res>(_self.keybinds!, (value) {
    return _then(_self.copyWith(keybinds: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigTuiCopyWith<$Res>? get tui {
    if (_self.tui == null) {
    return null;
  }

  return $ConfigTuiCopyWith<$Res>(_self.tui!, (value) {
    return _then(_self.copyWith(tui: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigWatcherCopyWith<$Res>? get watcher {
    if (_self.watcher == null) {
    return null;
  }

  return $ConfigWatcherCopyWith<$Res>(_self.watcher!, (value) {
    return _then(_self.copyWith(watcher: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigPermissionCopyWith<$Res>? get permission {
    if (_self.permission == null) {
    return null;
  }

  return $ConfigPermissionCopyWith<$Res>(_self.permission!, (value) {
    return _then(_self.copyWith(permission: value));
  });
}/// Create a copy of Config
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConfigExperimentalCopyWith<$Res>? get experimental {
    if (_self.experimental == null) {
    return null;
  }

  return $ConfigExperimentalCopyWith<$Res>(_self.experimental!, (value) {
    return _then(_self.copyWith(experimental: value));
  });
}
}

// dart format on
