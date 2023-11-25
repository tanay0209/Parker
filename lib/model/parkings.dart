import 'package:json_annotation/json_annotation.dart';
import 'package:parker/model/parking_details.dart';

part 'parkings.g.dart';

@JsonSerializable()
class Parkings {
  List<ParkingDetails>? parkings;
  Parkings({this.parkings});

  factory Parkings.fromJson(Map<String, dynamic> json) =>
      _$ParkingsFromJson(json);

  Map<String, dynamic> toJson() => _$ParkingsToJson(this);
}
