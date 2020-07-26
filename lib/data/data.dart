import 'package:flutter/material.dart';
import 'package:doctor_app/model/Speciality.dart';

List<SpecialityModel> getSpecialities() {
  List<SpecialityModel> speciality = new List<SpecialityModel>();

  //1
  speciality.add(new SpecialityModel(
    imgAssetPath: "assets/img1.png",
    noOfDoctors: 10,
    speciality: "Cough & Cold",
    backgroundColor: Color(0xffFBB97C),
  ));
  //2
  speciality.add(new SpecialityModel(
    imgAssetPath: "assets/img2.png",
    noOfDoctors: 17,
    speciality: "Heart Specialist",
    backgroundColor: Color(0xffF69383),
  ));
  //3
  speciality.add(new SpecialityModel(
    imgAssetPath: "assets/img3.png",
    noOfDoctors: 27,
    speciality: "Diabetes Care",
    backgroundColor: Color(0xffEACBCB),
  ));

  return speciality;
}
