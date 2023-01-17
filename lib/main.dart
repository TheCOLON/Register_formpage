import 'package:flutter/material.dart';
import 'package:register_page/register_page.dart';
// import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter UI',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const Register(),
  ));
}
