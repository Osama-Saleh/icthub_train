import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  List car = ['marsdes','MBW','hunday','toyota','marsdes','MBW','hunday','toyota'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'New Project',
      //     style: TextStyle(
      //       fontSize: 30.0,
      //       color: Colors.amber,
      //       fontWeight: FontWeight.w900,
      //       letterSpacing: 5,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.teal,
      // ),
      body: Center(
        child: Stack(
          children: [
           Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12)
            ),
            child: Image.asset('assets/images/image2.jpg'),
           ),
           Positioned(
            top: 1,
            left: 15,
             child: Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset('assets/images/photo.jpg'),
             ),
           ),

          Positioned(
            bottom: 10,
            left: 35,
            
            child: Text('this is my Photo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
            
            
          ],
        ),
      ),
    );
  }
}
