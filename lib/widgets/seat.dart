import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Seat extends StatelessWidget {
  Color color;
   Seat({Key? key,this.color=Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 28.h,
      child: Stack(
        children: [
          Positioned(


              child: Container(
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5.r),
                        bottomLeft: Radius.circular(5.r),
                        topLeft: Radius.circular(3.r),
                        topRight: Radius.circular(3.r)),


                ),
              )),
          Positioned(top: -5.h,
              left: 10.w,

              child: Container(
                width: 23.w,
                height: 23.h,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.r),
                        topLeft: Radius.circular(8.r),
                        bottomLeft: Radius.circular(3.r),
                        bottomRight: Radius.circular(3.r)),

                    border: Border.all(color: Colors.white)
                ),
              ))
        ],
      ),
    );
  }
}
