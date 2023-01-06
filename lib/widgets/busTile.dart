import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12)),
        child: Row(

          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: ExactAssetImage(bus,),fit: BoxFit.contain, ),
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
              ),
              height: double.infinity,
              width: 80,
            ),
            SizedBox(width: 10,),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(title,textAlign: TextAlign.left,style: TextStyle(color: Colors.black54,fontSize: 13),),
                Text(subtitle,textAlign: TextAlign.left,style: TextStyle(color: Colors.black54,fontSize: 13),)
              ],

            ),
            Spacer(),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: onTap, child: Text(buttonTitle,style: TextStyle(fontSize: 12,color: Colors.white),)),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}
