import 'package:json_annotation/json_annotation.dart';
import 'package:parker/model/parking_details.dart';

part 'my_parkings.g.dart';

@JsonSerializable()
class MyParkings {
  List<ParkingDetails>? myParkings;

  MyParkings({this.myParkings});

  factory MyParkings.fromJson(Map<String, dynamic> json) =>
      _$MyParkingsFromJson(json);

  Map<String, dynamic> toJson() => _$MyParkingsToJson(this);
}
