import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/assets/images/images.dart';
import 'package:testapp/screen/busManageScreen.dart';
import 'package:testapp/widgets/busTile.dart';
import 'package:testapp/widgets/categoryTile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120.h,
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'moove',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 33.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'be',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 33.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CategoryTile(
                    title: 'Bus',
                    subtitle: 'Manage your Bus',
                    image: bus,
                    color: Colors.red),
                CategoryTile(
                    title: 'Driver',
                    subtitle: 'Manage your Driver',
                    image: driver,
                    color: Colors.black),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Text(
                  '21 Buses Found',
                  style: TextStyle(color: Colors.black54, fontSize: 12.sp),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, ),
            child: SizedBox(
              height: 373.h,
              child: ListView.builder(shrinkWrap: true,

                itemCount: 5,
                itemBuilder: (context, index) {
                return CustomTile(title: 'KSRTC', subtitle: 'Swift Scania P-Series',onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BusManageScreen(),));
                },);
              },),
            ),
          )
        ],
      ),
    );
  }
}
