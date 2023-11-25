import 'package:json_annotation/json_annotation.dart';
import 'package:parker/model/parking_details.dart';

part 'parkings.g.dart';

@JsonSerializable()
class Parkings {
  final List<ParkingDetails> parkings;
  Parkings({required this.parkings})


  factory Parkings.fromJson(Map<String, dynamic> json) => _$ParkingsFromJson(json);

  Map<String, dynamic> toJson() => _$ParkingsToJson(this);
}
