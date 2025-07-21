import 'package:flutter/material.dart';
import 'package:new_project/product_api_screen/ui/product_api_screen.dart';
import 'package:new_project/train.dart';

void main() async {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   bool isPush = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductApiScreen(),
    );
  }
}
