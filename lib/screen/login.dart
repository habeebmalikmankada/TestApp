import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/api/api.dart';
import 'package:testapp/class/loading.dart';
import 'package:testapp/screen/home.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController passwordNameTextEditingController =
      TextEditingController();

  void login(BuildContext context) async {
    Loading().openLoading(context);
    final credential = await ApiHelper().login(
        username: userNameTextEditingController.text,
        password: passwordNameTextEditingController.text);
    Loading().closeLoading(context);
    if (credential.status!) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230.h,
                color: Colors.black,
              ),
              Positioned(
                right: -50.w,
                top: -130.h,
                child: Transform.rotate(
                  angle: 70,
                  child: Container(
                    width: 300.w,
                    height: 300.h,
                    color: Colors.red,
                  ),
                ),
              ),
              Positioned(
                  top: 115.h,
                  left: 30.w,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 33.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 30.w,
                  top: 160.h,
                  child: Text(
                    'Manage your Bus and Drivers',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            width: 300.w,
            child: TextField(
              controller: userNameTextEditingController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none),
                fillColor: Colors.grey[300],
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                hintText: 'Enter Username',
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 300.w,
            child: TextField(
              controller: passwordNameTextEditingController,
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide.none),
                fillColor: Colors.grey[300],
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                hintText: 'Enter Password',
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            width: 300.w,
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () async {
                  login(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
