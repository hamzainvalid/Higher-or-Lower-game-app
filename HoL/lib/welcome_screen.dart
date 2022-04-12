import 'package:flutter/material.dart';
import 'package:higher_or_lower/categories.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' show lerpDouble;

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  child: Image.asset('images/Logo.png', height: 40.h)),
              SizedBox(height: 3.h),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffffb830),
                    onPrimary: Colors.black,
                    padding:
                    EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                    minimumSize: Size(50.w, 10.h),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Categories.id);
                  },
                  child: const Text(
                    'START',
                    style: TextStyle(
                        fontSize: 25, fontFamily: 'Poppins-Regular'),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
      ),
    );
  }
}


