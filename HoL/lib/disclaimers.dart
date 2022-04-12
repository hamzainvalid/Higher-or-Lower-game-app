import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/settings.dart';

class DisclaimersScreen extends StatefulWidget {
  static const String id = 'disclaimers';
  @override
  _DisclaimersScreenState createState() => _DisclaimersScreenState();
}

class _DisclaimersScreenState extends State<DisclaimersScreen> {
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
                'DISCLAIMERS',
                style: TextStyle(fontSize: 30, fontFamily: 'Revalia-Regular'),
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              width: 360,
              height: 410,
              padding: EdgeInsets.all(15.0),
              decoration:
              BoxDecoration(color: Color(0xffffb830), borderRadius: BorderRadius.circular(20.0)),
              child: Text('By downloading, accessing or using our Higher and Lower app '
                  'or any page of this app you signify your assent to this disclaimer. '
                  'Our mobile application may contain links to other websites or content '
                  'belonging to or originating from third parties or links to websites. '
                  'Such external links are not investigated, monitored or checked for accuracy, '
                  'adequacy, validity, availability or completeness by us.',
                  style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 14.sp),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      )),
    );
  }
}
