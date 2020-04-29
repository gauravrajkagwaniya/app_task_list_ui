import 'package:flutter/material.dart';
//import 'package:trial/cart.dart';
import './homepage.dart';
import './cart.dart';

void main() {

  runApp(MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple,
          buttonColor:  Colors.green
      ),

      routes: {
        '/': (BuildContext context) => Homepage(),
        '/cart': (BuildContext context) => Cartlist(),
      },

    );
  }
}