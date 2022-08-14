import 'package:flutter/material.dart';
import 'package:wow_pizza/home.dart';

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
        '1':(context)=>MyHomePage(),
        '2':(context)=>MyHomePage(),
        '3':(context)=>MyHomePage(),
        '4':(context)=>MyHomePage(),
        '5':(context)=>MyHomePage(),
      }, //routes
    );
  }
}
