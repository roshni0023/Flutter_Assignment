
import 'package:assignmentflutter/model/plantModel.dart';
import 'package:assignmentflutter/screen/listView/home.dart';
import 'package:assignmentflutter/screen/listView/plantHome.dart';
import 'package:assignmentflutter/screen/listView/plantdetails.dart';
import 'package:assignmentflutter/screen/loginpage.dart';
import 'package:assignmentflutter/screen/registration.dart';
import 'package:assignmentflutter/screen/splash_image_with_background.dart';
import 'package:assignmentflutter/screen/splash_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlantHome(),
      routes: {
        'homePage': (context)=> HomePage(),
        'detailsPage': (context)=> DetailPage(plantId: 0,),
      },
    );
  }
}