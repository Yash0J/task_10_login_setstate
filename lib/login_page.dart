/// ignore_for_file: unused_local_variable, unused_import, file_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_10_login_setstate/colors.dart';
import 'package:task_10_login_setstate/coustom_widgits.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ///
  /// [Validator for username.]
  String? validateUsername(username) {
    if (username == null || username.isEmpty) {
      return 'Username is required';
    }

    return null; // Username is valid
  }

  ///
  /// [Validator for email.]
  String? validateEmail(email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }

    // Check if the email contains '@' and '.'
    else if (!RegExp(r'^[^@]+@[^.]+\..+$').hasMatch(email)) {
      return 'Invalid email format';
    }

    return null; // Email is valid
  }

  ///
  /// [Validator for password.]
  String? validatePassword(password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }

    return null; // Password is valid
  }

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? _usernameError;
  String? _emailError;
  String? _passwordError;

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;

    var mediaHeight = MediaQuery.of(context).size.height;

    //
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              const SizedBox(height: 18),
              //
              loginImage(mediaHeight),
              //
              const SizedBox(height: 36),
              // const SizedBox(height: 18),
              //
              Coustom.text(
                text: "Login",
                fontSize: 40,
                fontWeight: FontWeight.w600,
                // textAlign: TextAlign.left,
              ),
              //
              const SizedBox(height: 12),
              //
              Coustom.text(
                text: "Please sign in to continue",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                // textAlign: TextAlign.left,
              ),
              //
              const SizedBox(height: 38),
              //
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    userNameTextField(),
                    //
                    emailTextField(),
                    //
                    passwordTextField(),
                  ],
                ),
              ),
              //
              const SizedBox(height: 6),
              //
              Center(child: loginButton(mediaWidth)),
              //
              Center(child: forgotPasswordButton(mediaWidth)),
              //
              SizedBox(height: mediaHeight * 0.1),

              //
              Center(child: newAccountSignup()),
            ],
          ),
        ),
      ),
    );
  }

//
  Center loginImage(double mediaHeight) {
    return Center(
      child: SvgPicture.asset(
        'assets/icons/undraw_login.svg',
        height: mediaHeight * 0.18,
      ),
    );
  }

  SizedBox userNameTextField() {
    return SizedBox(
      height: 88,
      child: Column(
        children: [
          Coustom.textField(
            validator: (value) {
              setState(() {
                _usernameError = validateUsername(value);
              });
              return null;
            },
            controller: _usernameController,
            cursorColor: AppColors.white,
            prefixIcon: const Icon(Icons.person), // Set the prefix icon
            hintText: 'Enter user name', // Placeholder text
            label: Coustom.text(
              text: "User Name",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (_usernameError != null)
            Text(
              _usernameError!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }

  SizedBox emailTextField() {
    return SizedBox(
      height: 88,
      child: Column(
        children: [
          Coustom.textField(
            validator: (value) {
              setState(() {
                _emailError = validateUsername(value);
              });
              return null;
            },
            controller: _emailController,
            cursorColor: AppColors.white,
            prefixIcon: const Icon(Icons.email_outlined), // Set the prefix icon
            hintText: 'Enter your email', // Placeholder text
            label: Coustom.text(
              text: "EMAIL",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (_emailError != null)
            Text(
              _emailError!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }

  SizedBox passwordTextField() {
    return SizedBox(
      height: 88,
      child: Column(
        children: [
          Coustom.textField(
            validator: (value) {
              setState(() {
                _passwordError = validateUsername(value);
              });
              return null;
            },
            controller: _passwordController,
            obscureText: true,
            hintText: 'Enter your password', // Placeholder text
            label: Coustom.text(
              text: "PASSWORD",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            cursorColor: AppColors.white,
            prefixIcon: const Icon(
              Icons.lock_outlined,
            ), // Set the prefix icon
          ),
          if (_passwordError != null)
            Text(
              _passwordError!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      ),
    );
  }

  TextButton loginButton(double mediaWidth) {
    return TextButton(
      onPressed: () {
        // Validate the form
        if (_formKey.currentState?.validate() == true) {
          // Form is valid, perform login logic here
          // For demonstration purposes, we print the values
          print('Username: ${_usernameController.text}');
          print('Email: ${_emailController.text}');
          print('Password: ${_passwordController.text}');
        }
      },
      style: TextButton.styleFrom(
        backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(600)),
        minimumSize: Size(mediaWidth / 1.7, 70),
      ),
      child: Coustom.text(
        text: "LOGIN",
        textAlign: TextAlign.center,
        fontSize: 20,
        colors: AppColors.darkBlue,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  TextButton forgotPasswordButton(double mediaWidth) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        // backgroundColor: AppColors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(600)),
        minimumSize: Size(mediaWidth / 9, 0),
        surfaceTintColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      child: Coustom.text(
        text: "Forgot Password?",
        textAlign: TextAlign.center,
        fontSize: 16,
        colors: AppColors.green,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget newAccountSignup() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: "Don't have an account? ",
          style: Coustom.style(
            colors: AppColors.white.withOpacity(0.64),
          ),
          children: [
            WidgetSpan(
              child: Coustom.text(
                text: "Sign up",
                colors: AppColors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///
}
