import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testapp/screen/addDriverScreen.dart';
import 'package:testapp/screen/driverListScreen.dart';
import 'package:testapp/screen/home.dart';
import 'package:testapp/screen/login.dart';
import 'package:testapp/screen/welcome.dart';

import 'screen/busManageScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool?> getStarted()async{
   final prefs = await SharedPreferences.getInstance();
   bool? started  =  prefs.getBool('started');

   return started;

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 758),
      builder: (BuildContext context, Widget? child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  FutureBuilder<bool?>(
          future: getStarted(),
          builder: (context, snapshot) {
            if(snapshot.data!=null){
              return LoginScreen();
            }
            else
            {
              return Welcome();
            }
          },),
      );
    },);

  }
}

