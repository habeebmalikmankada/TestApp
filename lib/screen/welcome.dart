import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.red,
      floatingActionButton: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.red),
            ),
          )),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            'moove',
            style: TextStyle(
                color: Colors.white, fontSize: 33, fontWeight: FontWeight.bold),
          ),
          Text(
            'be',
            style: TextStyle(
                color: Colors.yellow, fontSize: 33, fontWeight: FontWeight.bold),
          ),

        ],),
      ),
    );
  }
}
