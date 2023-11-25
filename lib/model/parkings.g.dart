// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parkings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parkings _$ParkingsFromJson(Map<String, dynamic> json) => Parkings(
      parkings: (json['parkings'] as List<dynamic>?)
          ?.map((e) => ParkingDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ParkingsToJson(Parkings instance) => <String, dynamic>{
      'parkings': instance.parkings,
    };
