// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_10_login_setstate/coustom-widgits.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;

    var mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/icons/undraw_login.svg',
                height: mediaHeight * 0.3,
              ),
              //
              const SizedBox(height: 18),
              //
              Coustom.text(
                text: "Login",
                fontSize: 40,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.left,
              ),
              //
              const SizedBox(height: 12),
              //
              Coustom.text(
                text: "Login",
                fontSize: 40,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.left,
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
