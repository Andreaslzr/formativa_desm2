import 'package:flutter/material.dart';
import 'package:formativa/login.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
      primarySwatch: Colors.deepPurple
    ),
    home: login(),
  ));
}
