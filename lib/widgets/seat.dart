import 'package:flutter/material.dart';

class Seat extends StatelessWidget {
  Color color;
   Seat({Key? key,this.color=Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 28,
      child: Stack(
        children: [
          Positioned(


              child: Container(
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3)),


                ),
              )),
          Positioned(top: -5,
              left: 10,

              child: Container(
                width: 23,
                height: 23,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(3),
                        bottomRight: Radius.circular(3)),

                    border: Border.all(color: Colors.white)
                ),
              ))
        ],
      ),
    );
  }
}
