import 'package:flutter/material.dart';
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  AddDriverScreen(),
    );
  }
}

