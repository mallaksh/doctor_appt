import 'package:flutter/cupertino.dart';

class DoctorModel{

  String imgAssetPath;
  String name;
  String speciality;
  String email;
  int phone;
  Color backgroundColor;
  String about;
  DoctorModel({this.imgAssetPath,this.name,this.speciality,this.email,this.phone, this.backgroundColor, this.about});
}

/*class _DoctorModel extends State<DoctorModel>{
  final DoctorModel = DoctorModel();
  static String name = widget.name.toString();

}*/