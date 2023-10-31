import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home.dart';
import 'package:flutter_learn/pages/choose_location.dart';
import 'package:flutter_learn/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => Choose_Location(),
    },
  ));
}
