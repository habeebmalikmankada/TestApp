import 'package:flutter/material.dart';

class AddDriverScreen extends StatelessWidget {
  const AddDriverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
          onPressed: () {

          }, child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 80),
        child: Text('Save'),
      )),
      appBar: AppBar(

        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Add Driver',style: TextStyle(color: Colors.white,fontSize: 18),),),
      body: Container(
        padding: EdgeInsets.only(top: 40),
        width: double.infinity,
        height: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [

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
                hintText: 'Enter Name',
              ),
            ),
          ),
          SizedBox(height: 20,),
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
                hintText: 'Enter License number',
              ),
            ),
          ),
        ],),
      ),
    );
  }
}
