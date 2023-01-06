import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loading{
  bool? isLoading ;

  void openLoading(BuildContext context){
    isLoading = true;
    showDialog(
      barrierDismissible: false,
      context: context, builder: (context) {

      return Center(child: Container(
          height: 40.h,width: 40.w,
          child: CircularProgressIndicator(color: Colors.red,)));
    },);

  }

  void closeLoading(BuildContext context){
    if(isLoading!=null){
      if(isLoading!)
      Navigator.pop(context);
    }

  }

}