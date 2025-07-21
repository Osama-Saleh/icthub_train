import 'package:flutter/material.dart';
import 'package:new_project/gridview.dart';
import 'package:new_project/home_screen.dart';
import 'package:new_project/setting.dart';

class CustomTrain extends StatefulWidget {
  const CustomTrain({super.key});

  @override
  State<CustomTrain> createState() => _CustomTrainState();
}

class _CustomTrainState extends State<CustomTrain> {
  List screenList = [
    HomeScreen(),
    CustomGridView(),
    SettingScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BNB'),
        centerTitle: true,
      ),
      body: screenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: Colors.blue[300],
          fixedColor: Colors.red,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          type:BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.production_quantity_limits), label: 'product'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'settings'),
            
          ]),
    );
  }
}
