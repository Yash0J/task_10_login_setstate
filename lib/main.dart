import 'package:flutter/material.dart';
import 'package:task_10_login_setstate/colors.dart';
import 'package:task_10_login_setstate/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primaryColor,
        colorScheme: ColorScheme.dark(
          primary: AppColors.primaryColor,
          background: AppColors.darkBlue,
          secondary: AppColors.purple,
        ),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
