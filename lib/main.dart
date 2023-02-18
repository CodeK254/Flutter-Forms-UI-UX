import 'package:flutter/material.dart';
import 'package:flutter_forms/login.dart';
import 'package:flutter_forms/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const RegisterUI(),
        "/login":(context) => const LoginUI(),
      },
    )
  );
}