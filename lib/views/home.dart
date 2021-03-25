import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/model/speciality.dart';
import 'package:doctor_app/model/doctor.dart';
import 'package:doctor_app/views/auth.dart';
import 'package:doctor_app/views/speciality.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/views/login_screen.dart';

import 'doctor.dart';



class HomePage extends StatefulWidget {

  final AuthService _auth = AuthService();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final AuthService _auth = AuthService();


  List<SpecialityModel> specialities;
  List<DoctorModel> doctors;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    specialities = getSpeciality();
    doctors = getDoctor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0.0,
        title: Text('Home'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )        ],
      ),
      drawer: Drawer(
          child: Container(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Home Page'),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  title: Text('Specialities'),
                  onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Speciality()));

                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Doctors'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Doctors()));

                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          // Populate the Drawer in the next step.
      ),

      body: SingleChildScrollView(
        child: Container(

          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Text("Find Your Doctor", style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 30,

                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 70,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 70,
                child: RaisedButton(

                  child: Text("Specialities", style: TextStyle(
                      color: Colors.black87.withOpacity(0.8),
                      fontSize: 25,
                      fontWeight: FontWeight.w600

                  ),),
                  //color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Speciality()));
                  },
                ),
                
              ),

              SizedBox(height: 70,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 70,
                child: RaisedButton(

                  child: Text("Doctors", style: TextStyle(
                      color: Colors.black87.withOpacity(0.8),
                      fontSize: 25,
                      fontWeight: FontWeight.w600

                  ),),
                  //color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Doctors()));
                  },
                ),

              ),


              SizedBox(height: 20,),



              SizedBox(height: 20,),
              Text("Top Doctos", style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ) ,),


              SizedBox(height: 20,),
              DoctorsTile(),
              SizedBox(height: 20,),

              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {

  final String imgAssetPath;
  final String speciality;
  final int noOfDoctors;
  final Color backColor;
  SpecialistTile({@required this.imgAssetPath,@required this.speciality
    ,@required this.noOfDoctors, @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.circular(24)
      ),
      padding: EdgeInsets.only(top: 16,right: 16,left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(speciality, style: TextStyle(
              color: Colors.white,
              fontSize: 20
          ),),
          SizedBox(height: 6,),
          Text("$noOfDoctors Doctors", style: TextStyle(
              color: Colors.white,
              fontSize: 13
          ),),
          Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,)
        ],
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
    return GestureDetector(

      child: Container(
        decoration: BoxDecoration(
            color: Color(0xffFFEEE0),
            borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(horizontal: 24,
            vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset("assets/doc.jpg", height: 50,),
            SizedBox(width: 17,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Dr. Sara", style: TextStyle(
                    color: Color(0xffFC9535),
                    fontSize: 19
                ),),
                SizedBox(height: 2,),
                Text("Heart Speailist", style: TextStyle(
                    fontSize: 15
                ),)
              ],
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
