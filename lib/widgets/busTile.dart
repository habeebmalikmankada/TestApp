import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets/images/images.dart';

class CustomTile extends StatelessWidget {
  VoidCallback? onTap;
  String title;
  String subtitle;
  String buttonTitle;


   CustomTile({Key? key, this.onTap,required this.title,required this.subtitle,this.buttonTitle='Manage'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 5.h),
      child: Container(
        width: double.infinity,
        height: 100.h,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: Colors.black12)),
        child: Row(

          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: ExactAssetImage(bus,),fit: BoxFit.contain, ),
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.r),topLeft: Radius.circular(10.r)),
              ),
              height: double.infinity,
              width: 80.w,
            ),
            SizedBox(width: 10.w,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(title,textAlign: TextAlign.left,style: TextStyle(color: Colors.black54,fontSize: 13.sp),),
                Text(subtitle,textAlign: TextAlign.left,style: TextStyle(color: Colors.black54,fontSize: 13.sp),)
              ],

            ),
            Spacer(),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: onTap, child: Text(buttonTitle,style: TextStyle(fontSize: 12.sp,color: Colors.white),)),
            SizedBox(width: 10.w,),
          ],
        ),
      ),
    );
  }
}
