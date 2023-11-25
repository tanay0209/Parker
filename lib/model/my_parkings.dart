import 'package:json_annotation/json_annotation.dart';
import 'package:parker/model/parking_details.dart';

part 'MyParkings.g.dart';

@JsonSerializable()
class MyParkings {
  final List<ParkingDetails> myParkings;

  MyParkings({required this.myParkings})


  factory MyParkings.fromJson(Map<String, dynamic> json) => _$MyParkingsFromJson(json);

  Map<String, dynamic> toJson() => _$MyParkingsToJson(this);
}
