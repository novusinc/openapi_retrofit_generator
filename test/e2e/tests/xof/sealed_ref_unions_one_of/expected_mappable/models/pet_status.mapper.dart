// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'pet_status.dart';

class PetStatusMapper extends EnumMapper<PetStatus> {
  PetStatusMapper._();

  static PetStatusMapper? _instance;
  static PetStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PetStatusMapper._());
    }
    return _instance!;
  }

  static PetStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PetStatus decode(dynamic value) {
    switch (value) {
      case 'available':
        return PetStatus.available;
      case 'adopted':
        return PetStatus.adopted;
      case 'unknown':
        return PetStatus.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(PetStatus self) {
    switch (self) {
      case PetStatus.available:
        return 'available';
      case PetStatus.adopted:
        return 'adopted';
      case PetStatus.unknown:
        return 'unknown';
    }
  }
}

extension PetStatusMapperExtension on PetStatus {
  dynamic toValue() {
    PetStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PetStatus>(this);
  }
}

