import 'package:flutter/material.dart';
import 'package:testapp/widgets/busTile.dart';

class DriverListScreen extends StatelessWidget {
  const DriverListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Driver List',style: TextStyle(color: Colors.white,fontSize: 18),),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
          onPressed: () {

      }, child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 80),
        child: Text('Add Driver'),
      )),
      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('21 Drivers Found',style: TextStyle(color: Colors.black87,fontSize: 12),),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return CustomTile(title: 'Rohit Sharma', subtitle: 'Licn no : 6546468418413616',buttonTitle: 'Delete',);
              },),
          )


        ],),
      ),

    );
  }
}
