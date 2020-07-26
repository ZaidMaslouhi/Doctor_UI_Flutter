import 'package:flutter/material.dart';
import 'package:doctor_app/views/home.dart';
import 'package:doctor_app/views/doctor_infos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Home(),
      '/infos': (context) => DoctorInfo(),
    },
  ));
}
