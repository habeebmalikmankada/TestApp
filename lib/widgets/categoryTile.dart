import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  String title;
  String subtitle;
  String image;
Color color;
   CategoryTile({Key? key,required this.title,required this.subtitle,required this.image,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20,top: 10),
      child: Column(children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23,),textAlign: TextAlign.left,)),
        Align(
            alignment: Alignment.bottomLeft,
            child: Text(subtitle,style: TextStyle(color: Colors.white,fontSize: 12),)),
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(image,width: 100,height: 100,),)


      ],),

      width: 150,height: 170,decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(10)),);
  }
}
