import 'package:flutter/material.dart';
import 'package:wow_pizza/home.dart';
import 'package:wow_pizza/vegetarianpizza.dart';
import 'package:wow_pizza/Cheesepizza.dart';
import 'package:wow_pizza/Frenchfries.dart';
import 'package:wow_pizza/facebook.dart';
import 'package:wow_pizza/Instagram.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WOW Pizza',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
      routes:{
        '0':(context)=>MyHomePage(),
        '1':(context)=>vegetarianpizza(),
        '2':(context)=>Cheesepizza(),
        '3':(context)=>Frenchfries(),
        '4':(context)=>Facebook(),
        '5':(context)=>Instagram(),
      }, //routes
    );
  }
}
