// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pet_house.dart';

class PetHouseMapper extends ClassMapperBase<PetHouse> {
  PetHouseMapper._();

  static PetHouseMapper? _instance;
  static PetHouseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PetHouseMapper._());
      CatMapper.ensureInitialized();
      PetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PetHouse';

  static Cat _$occupant(PetHouse v) => v.occupant;
  static const Field<PetHouse, Cat> _f$occupant = Field('occupant', _$occupant);
  static Pet? _$backup(PetHouse v) => v.backup;
  static const Field<PetHouse, Pet> _f$backup = Field(
    'backup',
    _$backup,
    opt: true,
  );

  @override
  final MappableFields<PetHouse> fields = const {
    #occupant: _f$occupant,
    #backup: _f$backup,
  };

  static PetHouse _instantiate(DecodingData data) {
    return PetHouse(
      occupant: data.dec(_f$occupant),
      backup: data.dec(_f$backup),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PetHouse fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PetHouse>(map);
  }

  static PetHouse fromJsonString(String json) {
    return ensureInitialized().decodeJson<PetHouse>(json);
  }
}

mixin PetHouseMappable {
  String toJsonString() {
    return PetHouseMapper.ensureInitialized().encodeJson<PetHouse>(
      this as PetHouse,
    );
  }

  Map<String, dynamic> toJson() {
    return PetHouseMapper.ensureInitialized().encodeMap<PetHouse>(
      this as PetHouse,
    );
  }

  PetHouseCopyWith<PetHouse, PetHouse, PetHouse> get copyWith =>
      _PetHouseCopyWithImpl<PetHouse, PetHouse>(
        this as PetHouse,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PetHouseMapper.ensureInitialized().stringifyValue(this as PetHouse);
  }

  @override
  bool operator ==(Object other) {
    return PetHouseMapper.ensureInitialized().equalsValue(
      this as PetHouse,
      other,
    );
  }

  @override
  int get hashCode {
    return PetHouseMapper.ensureInitialized().hashValue(this as PetHouse);
  }
}

extension PetHouseValueCopy<$R, $Out> on ObjectCopyWith<$R, PetHouse, $Out> {
  PetHouseCopyWith<$R, PetHouse, $Out> get $asPetHouse =>
      $base.as((v, t, t2) => _PetHouseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PetHouseCopyWith<$R, $In extends PetHouse, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  CatCopyWith<$R, Cat, Cat> get occupant;
  PetCopyWith<$R, Pet, Pet>? get backup;
  $R call({Cat? occupant, Pet? backup});
  PetHouseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PetHouseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PetHouse, $Out>
    implements PetHouseCopyWith<$R, PetHouse, $Out> {
  _PetHouseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PetHouse> $mapper =
      PetHouseMapper.ensureInitialized();
  @override
  CatCopyWith<$R, Cat, Cat> get occupant =>
      $value.occupant.copyWith.$chain((v) => call(occupant: v));
  @override
  PetCopyWith<$R, Pet, Pet>? get backup =>
      $value.backup?.copyWith.$chain((v) => call(backup: v));
  @override
  $R call({Cat? occupant, Object? backup = $none}) => $apply(
    FieldCopyWithData({
      if (occupant != null) #occupant: occupant,
      if (backup != $none) #backup: backup,
    }),
  );
  @override
  PetHouse $make(CopyWithData data) => PetHouse(
    occupant: data.get(#occupant, or: $value.occupant),
    backup: data.get(#backup, or: $value.backup),
  );

  @override
  PetHouseCopyWith<$R2, PetHouse, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PetHouseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

