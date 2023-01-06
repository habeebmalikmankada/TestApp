import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testapp/assets/images/images.dart';
import 'package:testapp/widgets/seat.dart';
import 'package:testapp/widgets/seatRow.dart';

class BusManageScreen extends StatelessWidget {
  const BusManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'KSRTC Swift Scania P-Series',
          style: TextStyle(fontSize: 18),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.w),
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            height: 120.h,
            width: 320.w,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rohit Sharma',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'License no : HJS4554DA5C',
                      style: TextStyle(color: Colors.white, fontSize: 11.sp),
                    )
                  ],
                ),
                Image.asset(
                  driver,
                  width: 100.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
            height: 455.h,
            width: 280.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Colors.black12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Seat(
                    color: Colors.black,
                  ),
                ),

Expanded(

  child:   ListView.builder(
    itemExtent: 50.h,




    shrinkWrap: true,

    itemCount: 9,

    itemBuilder: (context, index) {

    return SeatRow();

  },),
)
              ],
            ),
          )
        ],
      ),
    );
  }
}
