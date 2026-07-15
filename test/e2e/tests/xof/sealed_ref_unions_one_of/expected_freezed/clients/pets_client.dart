// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:retrofit/error_logger.dart';

import '../models/pet.dart';
import '../models/pet_house.dart';

part 'pets_client.g.dart';

@RestApi()
abstract class PetsClient {
  factory PetsClient(Dio dio, {String? baseUrl}) = _PetsClient;

  @GET('/pets')
  Future<Pet> getPet();

  @GET('/pet-house')
  Future<PetHouse> getPetHouse();
}
