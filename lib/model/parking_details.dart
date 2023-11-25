import 'package:json_annotation/json_annotation.dart';

part 'parking_details.g.dart';

@JsonSerializable()
class ParkingDetails {
  String? name;
  ParkingDetails({this.name});

  factory ParkingDetails.fromJson(Map<String, dynamic> json) =>
      _$ParkingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ParkingDetailsToJson(this);
}
