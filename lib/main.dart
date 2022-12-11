import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/home_page.dart';
import 'package:weather/weatherData.dart';
// ignore: unused_import
import 'dart:html';

import 'package:weather/weathermodel.dart';

void main(List<String> args) {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  var client = WeatherData();
  var data;
  info() {}
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navoi",
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(15, 6, 92, 65)),
      home: MyhomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
