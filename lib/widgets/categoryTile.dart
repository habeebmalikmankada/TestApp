import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTile extends StatelessWidget {
  String title;
  String subtitle;
  String image;
  Color color;
  CategoryTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, top: 10.h),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23.sp,
                ),
                textAlign: TextAlign.left,
              )),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              )),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              image,
              width: 100.w,
              height: 100.h,
            ),
          )
        ],
      ),
      width: 150.w,
      height: 170.h,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.r)),
    );
  }
}
