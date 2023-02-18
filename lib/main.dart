import 'package:flutter/material.dart';
import 'package:forms/login.dart';
import 'package:forms/register.dart';

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