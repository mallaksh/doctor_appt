import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/views/speciality.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/model/doctor.dart';


class Doctors extends StatefulWidget {
  @override
  _DoctorsState createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {

  List<DoctorModel> doctors;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //specialities = getSpeciality();
    doctors = getDoctor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),

      body: SingleChildScrollView(
        child: Container(

          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Text("Doctors", style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 30,

                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 40,),


              SizedBox(height: 20,),
              Container(
                height: 500,
                child: ListView.builder(
                    itemCount: doctors.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return DoctorsTile(
                        imgAssetPath: doctors[index].imgAssetPath,
                        speciality: doctors[index].speciality,
                        name: doctors[index].name,
                        phone: doctors[index].phone,
                        email: doctors[index].email,
                        backColor: doctors[index].backgroundColor,
                        about: doctors[index].about,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorsTile extends StatelessWidget {

  final String name;
  final String imgAssetPath;
  final String speciality;
  final String email;
  final int phone;
  final Color backColor;
  final String about;
  DoctorsTile({@required this.name,@required this.imgAssetPath,@required this.speciality
    ,@required this.email,@required this.phone, @required this.backColor,@required this.about});


  @override
  Widget build(BuildContext context) {
    return Container(

      width: 200,
      height: 500,
      margin: EdgeInsets.only(right: 16),

      decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(24)
      ),
    child: RaisedButton(

      padding: EdgeInsets.only(top: 16,right: 16,left: 16),
      child: Column(


        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          SizedBox(height: 6,),

          Text(name, style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
          ),),
          SizedBox(height: 6,),
          Text(speciality, style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),),
          SizedBox(height: 6,),
          Text(email, style: TextStyle(
              color: Colors.white,
              fontSize: 17
          ),),
          SizedBox(height: 6,),
          Text("$phone ", style: TextStyle(
              color: Colors.white,
              fontSize: 13
          ),),
          Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,),
          SizedBox(height: 6,),
          Text(about, style: TextStyle(
              color: Colors.white,
              fontSize: 17
          ),),
          SizedBox(height: 6,),
          RaisedButton(
            child: Text("Book Appoinment", style: TextStyle(
                color: Colors.white,
                fontSize: 23,

              fontWeight: FontWeight.bold,
            ),),
          )
        ],
      ),





    ),
    );
  }

}
