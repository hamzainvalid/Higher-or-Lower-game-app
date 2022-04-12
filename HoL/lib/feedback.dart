import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:higher_or_lower/settings.dart';

class FeedbackScreen extends StatefulWidget {
  static const String id = 'feedback';
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
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
                'FEEDBACK',
                style: TextStyle(fontSize: 22.sp, fontFamily: 'Revalia-Regular'),
              ),
            ),
            SizedBox(height: 3.5.h),
            Container(
              child: Text('Your Feedback helps us to improve our app!',
                  style:
                      TextStyle(fontFamily: 'Poppins-Regular', fontSize: 12.sp)),
            ),
            SizedBox(height: 2.h),
            Container(
              child: Text('App Rating',
                  style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 12.sp),),
            ),
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              itemCount: 5,
              direction: Axis.horizontal,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(height: 2.h),
            Container(
              width: 90.w,
              child: Text('Your Feedback',
                  style: TextStyle(fontFamily: 'Poppins-Regular', fontSize: 12.sp),
                  textAlign: TextAlign.left),
            ),
            Container(
              height: 25.h,
              width: 90.w,
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  fillColor: Color(0xffffb830),
                  filled: true,
                  hintText: 'Type here',
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff3db2ff), width: 1.0)),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff3db2ff), width: 1.0)),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Container(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffff7800),
                  onPrimary: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  minimumSize: Size(140, 45),
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                icon: Icon(Icons.send_rounded, size: 28),
                label: Text(
                  'SEND',
                  style: TextStyle(fontSize: 18, fontFamily: 'Poppins-Regular'),
                ),
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Thank you for your feedback!'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SettingsScreen.id);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
