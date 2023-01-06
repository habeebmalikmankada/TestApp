import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testapp/screen/login.dart';

import '../api/api.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.red,
      floatingActionButton: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          onPressed: () async{

            ApiHelper().test();


            // final prefs = await SharedPreferences.getInstance();
            // bool? started  =  prefs.getBool('started');
            // if(started!=null){
            //   prefs.setBool('started', true);
            // }
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.red),
            ),
          )),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            'moove',
            style: TextStyle(
                color: Colors.white, fontSize: 33.sp, fontWeight: FontWeight.bold),
          ),
          Text(
            'be',
            style: TextStyle(
                color: Colors.yellow, fontSize: 33.sp, fontWeight: FontWeight.bold),
          ),

        ],),
      ),
    );
  }
}
