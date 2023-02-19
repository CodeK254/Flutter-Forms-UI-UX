import 'package:flutter/material.dart';
import 'package:flutter_forms/LayoutTwo/launcher.dart';
import 'package:flutter_forms/LayoutTwo/login.dart';
import 'package:flutter_forms/LayoutTwo/register.dart';
// import 'package:flutter_forms/LayoutOne/login.dart';
// import 'package:flutter_forms/LayoutOne/register.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // Layout One
        // "/":(context) => const RegisterUI(),
        // "/login":(context) => const LoginUI(),

        // Layout Two
        "/":(context) => const LauncherRegister(),
        "/register":(context) => const PlantlyRegister(),
        "/login":(context) => const PlantlyLogin(),
      },
    )
  );
}