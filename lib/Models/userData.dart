import 'package:flutter/material.dart';

import './location.dart';

class UserData {
  final String uid;
  final String name;
  final String userName;
  final Gender gender;
  final DateTime dateOfBirth;
  final Location homeLocation;
  final Location workLocation;

  UserData({
    @required this.uid,
    @required this.name,
    @required this.userName,
    @required this.gender,
    @required this.dateOfBirth,
    this.homeLocation,
    this.workLocation,
  });
}

enum Gender {
  Male,
  Female,
  Transgender,
  Others,
}
