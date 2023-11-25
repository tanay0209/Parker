// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_parkings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyParkings _$MyParkingsFromJson(Map<String, dynamic> json) => MyParkings(
      myParkings: (json['myParkings'] as List<dynamic>?)
          ?.map((e) => ParkingDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyParkingsToJson(MyParkings instance) =>
    <String, dynamic>{
      'myParkings': instance.myParkings,
    };
