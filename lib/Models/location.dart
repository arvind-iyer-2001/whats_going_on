import 'package:flutter/material.dart';

class Location {
  final double longitude;
  final double latitude;
  final String addressLine;
  final String locality;
  final String pincode;

  Location({
    @required this.longitude,
    @required this.latitude,
    @required this.addressLine,
    @required this.locality,
    @required this.pincode,
  });
}
