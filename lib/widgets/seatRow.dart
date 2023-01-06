import 'package:flutter/material.dart';
import 'package:testapp/widgets/seat.dart';

class SeatRow extends StatelessWidget {
  const SeatRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children: [
      Seat(),
      SizedBox(width: 10,),
      Seat(),
      Spacer(),
      Seat(),
      SizedBox(width: 10,),
      Seat(),

    ],);
  }
}
