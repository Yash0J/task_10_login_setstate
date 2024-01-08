import 'package:flutter/material.dart';
import 'package:task_10_login_setstate/colors.dart';
import 'package:task_10_login_setstate/login-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark, // Set to dark theme
        // primaryColor: Appcolor.primarycolor, // Set primary color
        primaryColor: Appcolor.primarycolor, // Set primary color
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Appcolor.primarycolor,
          accentColor: Appcolor.purple,
        ),

        // accentColor: Appcolor.secondrycolor, // Set accent color
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
