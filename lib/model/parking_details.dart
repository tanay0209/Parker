class ParkingDetails {
  final String name;
  ParkingDetails({required this.name})

  factory ParkingDetails.fromJson(Map<String, dynamic> json) => _$ParkingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ParkingDetailsToJson(this);

}
