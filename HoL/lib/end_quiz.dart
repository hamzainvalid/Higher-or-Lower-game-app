import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/main.dart';
import 'package:higher_or_lower/settings.dart';
import 'package:higher_or_lower/categories.dart';
import 'package:higher_or_lower/hollywood.dart';
import 'package:higher_or_lower/sports.dart';
import 'package:higher_or_lower/movies.dart';
import 'package:higher_or_lower/brands.dart';
import 'package:shared_preferences/shared_preferences.dart';


var highscore = Points.points;
var p1 = Points.points;
var s1 = Score.coins;


class EndQuiz extends StatefulWidget {
  static const String id = 'end_quiz';
  @override
  _EndQuizState createState() => _EndQuizState();
}

class _EndQuizState extends State<EndQuiz> {
  Future<int> _getIntFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final localHighscore = prefs.getInt('localHighscore');
    if(localHighscore == null){
      return 0;
    }else{
      print(localHighscore);
      return localHighscore;
    }
  }

  Future<void> _storingHighscore() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('localHighscore', Score.coins);
    localVars.score = await _getIntFromSharedPref();
    print(await _getIntFromSharedPref());
    print('second method!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home_rounded, size: 40, color: Colors.black),
          onPressed: () {
            Score.coins = 0;
            finished_quiz();
            Navigator.pushNamed(context, Categories.id);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings, size: 40, color: Colors.black),
            onPressed: () {
              Navigator.pushNamed(context, SettingsScreen.id);
            },
          ),
          SizedBox(width: 2.7.w),
        ],
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
                  'FINISHED!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Revalia-Regular', fontSize: 28.sp, height: 1.5),
                ),
              ),
              SizedBox(height: 60.0),
              Container(
                child: Image.asset('images/endquiz.jpg', height: 25.h)
              ),
              SizedBox(height: 30.0),
              Container(
                width: 275.0,
                child: Text(
                  'Your round score: ${Score.coins}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 20.sp, height: 1.0),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 250.0,
                child: Text(
                  'Your HighScore: ${Points.points}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 15.sp, height: 1.0),
                ),

              ), //score goes here
              SizedBox(height: 5.h),
              Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffff7800),
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    minimumSize: Size(30.w, 8.h),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  icon: Icon(Icons.refresh_rounded, size: 26.sp),
                  label: Text(
                    'Start new',
                    style:
                        TextStyle(fontSize: 21.sp, fontFamily: 'Poppins-Regular'),
                  ),
                  onPressed: () {
                    if(true){
                      Points.points = Score.coins;
                      _storingHighscore();
                    }
                    Score.coins = 0;
                    Navigator.pushNamed(context, Categories.id);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void finished_quiz(){
  if(Points.points < Score.coins){
    Points.points = Score.coins;
  }
}
