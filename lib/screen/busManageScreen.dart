import 'package:flutter/material.dart';
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
            padding: EdgeInsets.only(left: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 120,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(10))),
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
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'License no : HJS4554DA5C',
                      style: TextStyle(color: Colors.white, fontSize: 11),
                    )
                  ],
                ),
                Image.asset(
                  driver,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width - 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
    itemExtent: 50,




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
