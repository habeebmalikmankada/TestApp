import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                color: Colors.black,
              ),
              Positioned(
                right: -50,
                top: -130,
                child: Transform.rotate(
                  angle: 70,
                  child: Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                  ),
                ),
              ),
              Positioned(
                  top: 115,
                  left: 30,
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  left: 30,
                  top: 160,
                  child: Text(
                    'Manage your Bus and Drivers',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: Colors.grey[300],
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                hintText: 'Enter Username',
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 300,
            child: TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: Colors.grey[300],
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.black54,
                ),
                hintText: 'Enter Password',
              ),
            ),
          ),
          Spacer(),
          SizedBox(
            width: 300,
            child: ElevatedButton(

                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
