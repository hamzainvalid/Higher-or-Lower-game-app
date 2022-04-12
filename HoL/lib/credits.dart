import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:higher_or_lower/settings.dart';

class CreditsScreen extends StatefulWidget {
  static const String id = 'credits';
  @override
  _CreditsScreenState createState() => _CreditsScreenState();
}

class _CreditsScreenState extends State<CreditsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: IconButton(
          icon: Text('⬅', style: TextStyle(fontSize: 28.sp, color: Colors.black)),
          onPressed: () {
            Navigator.pushNamed(context, SettingsScreen.id);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'CREDITS',
                style: TextStyle(fontSize: 30, fontFamily: 'Revalia-Regular'),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: 82.w,
              height: 57.h,
              padding: EdgeInsets.all(15.0),
              decoration:
              BoxDecoration(color: Color(0xffffb830), borderRadius: BorderRadius.circular(20.0)),
              child: Text('Credits!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 16)),
            ),
          ],
        ),
      )),
    );
  }
}
