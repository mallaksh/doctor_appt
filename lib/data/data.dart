import 'package:doctor_app/model/speciality.dart';
import 'package:doctor_app/model/doctor.dart';
import 'package:flutter/cupertino.dart';

List<SpecialityModel> getSpeciality(){

  List<SpecialityModel> specialities = new List<SpecialityModel>();
  SpecialityModel specialityModel = new SpecialityModel();

  //1
  specialityModel.noOfDoctors = 10;
  specialityModel.speciality = "Cough & Cold";
  specialityModel.imgAssetPath = "assets/img1.png";
  specialityModel.backgroundColor = Color(0xffa6c1de);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //2
  specialityModel.noOfDoctors = 17;
  specialityModel.speciality = "Heart Specialist";
  specialityModel.imgAssetPath = "assets/heartp.jpg";
  specialityModel.backgroundColor = Color(0xffb8dc95);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //3
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Diabetes Care";
  specialityModel.imgAssetPath = "assets/diabetesp.png";
  specialityModel.backgroundColor = Color(0xffEACBCB);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  return specialities;
}



List<DoctorModel> getDoctor() {

  List<DoctorModel> doctors = new List<DoctorModel>();
  DoctorModel doctorModel = new DoctorModel();


  //1
  doctorModel.imgAssetPath = "assets/doc.jpg";
  doctorModel.name = "Dr. Sara";
  doctorModel.speciality = "Heart Specailist";
  doctorModel.email = "drsara12@gmail.con";
  doctorModel.phone = 91277786;
  doctorModel.backgroundColor = Color(0xffEACBCB);
  doctorModel.about = "Dr. Sara is an excellent Heart Specailist.";

  doctors.add(doctorModel);
  doctorModel = new DoctorModel();


  //2
  doctorModel.imgAssetPath = "assets/doc3.jpg";
  doctorModel.name = "Dr. Adam";
  doctorModel.speciality = "ophthalmologist";
  doctorModel.email = "dradam@gmail.com";
  doctorModel.phone = 91275555;
  doctorModel.backgroundColor = Color(0xff5765b4);
  doctorModel.about = "Dr. Adam is an ophthalmologist.";

  doctors.add(doctorModel);
  doctorModel = new DoctorModel();


  //3
  doctorModel.imgAssetPath = "assets/doctor3.jpg";
  doctorModel.name = "Dr. Ali";
  doctorModel.speciality = "Surgeon";
  doctorModel.email = "drali88@gmail.com";
  doctorModel.phone = 91865460;
  doctorModel.backgroundColor = Color(0xffcde281);
  doctorModel.about = "Dr. Ali is a Surgeon.";

  doctors.add(doctorModel);
  doctorModel = new DoctorModel();



  return doctors;
}
