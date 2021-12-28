import 'package:e_commerce_app/view/control_view.dart';
import 'package:e_commerce_app/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: ControlView(),
      )
      );
  }
}
