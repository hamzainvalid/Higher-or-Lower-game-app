import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/start_quiz.dart';
import 'package:higher_or_lower/end_quiz.dart';
import 'package:higher_or_lower/main.dart';
import 'package:higher_or_lower/categories.dart';
import 'package:higher_or_lower/settings.dart';


Random random = new Random();
var y = random.nextInt(searches.length);
var z = random.nextInt(searches.length);
var x = Icons.cached;
var asked = 0;
var _color = Colors.white;


List names = ['America', 'England', 'Africa', 'Egypt', 'Qatar', 'India', 'China', 'Singapore', 'Pakistan', 'Afghanistan'];
List searches = [3640000000, 1800000000, 4130000000, 1140000000, 868000000, 9290000000, 7880000000, 1770000000, 1630000000, 479000000];
List images = ['America', 'England', 'Africa', 'Egypt', 'Qatar', 'India', 'China', 'Singapore', 'Pakistan', 'Afghanistan'];

class Geography extends StatefulWidget {
  static const String id = 'geography';
  @override
  _GeographyState createState() => _GeographyState();
}


class _GeographyState extends State<Geography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home_rounded, size: 32.sp, color: Colors.black),
          onPressed: () {
            Score.coins = 0;
            Navigator.pushNamed(context, Categories.id);
          },
        ),
        title: Text(
          "+ ${Score.coins}",
          style: TextStyle(
            shadows: <Shadow>[
              Shadow(
                offset: Offset(3.0, 3.0),
                blurRadius: 6.0,
                color: Color.fromARGB(65, 0, 0, 0),
              ),
            ],
            fontFamily: 'Poppins', fontWeight: FontWeight.w300, fontSize: 19.sp, height: 0.2.h, color: Colors.black, ),
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.settings, size: 32.sp, color: Colors.black),
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


              SizedBox(height: 1.5.h),


              // FIRST OPTION
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 13.h,
                      backgroundImage: AssetImage('images/${images[y]}.jpg'),
                    ),
                  ),
                  Container(
                    width: 90.w,
                    child: Text(
                      '${names[y]}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SansSerif', fontWeight: FontWeight.w600, fontSize: 17.sp, height: 0.h, background: Paint()
                        ..strokeWidth = 28
                        ..color = Colors.white70
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 3.h),


              Container(
                width: 30.w,
                child: Text(
                  'has',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 15.sp, height: 0.2.h),
                ),
              ),

              SizedBox(height: 2.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 15.0),
                  Container(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff3DB2FF),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                        minimumSize: Size(80, 60),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      icon: Icon(Icons.play_circle_outline_rounded, size: 0),
                      label: Text(
                        'HIGHER',
                        style:
                        TextStyle(fontSize: 14.sp, fontFamily: 'Poppins-Regular'),
                      ),
                      onPressed: () {
                        setState(() {
                          higher_button(context);
                        });
                      },
                    ),
                  ),

                  Spacer(),

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3.w,
                          color: _color,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                    child: AnimatedSize(
                      curve: Curves.easeIn,
                      duration: const Duration(seconds: 1),
                      child: Icon(x, size: 14.w),
                    ),
                  ),

                  Spacer(),

                  Container(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffFF616D),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                        minimumSize: Size(80, 60),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      icon: Icon(Icons.play_circle_outline_rounded, size: 0),
                      label: Text(
                        'LOWER',
                        style:
                        TextStyle(fontSize: 14.sp, fontFamily: 'Poppins-Regular'),
                      ),
                      onPressed: () {
                        setState(() {
                          lower_button(context);
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 15.0),
                ],),


              SizedBox(height: 2.h),


              Container(
                width: 30.w,
                child: Text(
                  'than',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 15.sp, height: 0.2.h),
                ),
              ),

              SizedBox(height: 2.h),


              // SECOND OPTION
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 13.h,
                      backgroundImage: AssetImage('images/${images[z]}.jpg'),
                    ),
                  ),
                  Container(
                    width: 90.w,
                    child: Text(
                      '${names[z]}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'SansSerif', fontWeight: FontWeight.w600, fontSize: 17.sp, height: 0.h, background: Paint()
                        ..strokeWidth = 28
                        ..color = Colors.white70
                        ..style = PaintingStyle.stroke
                        ..strokeJoin = StrokeJoin.round),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}



void playSound(String soundname){
  if(volumeControl.mute){
    print(volumeControl.mute);
    return;
  }
  final _player = AudioCache();
  _player.play(soundname);
}

higher_button(context) {
  if(searches[y] > searches[z]){
    playSound('right.mp3');
    x = Icons.check;
    _color = Colors.green;
    Score.coins++;
    y = random.nextInt(searches.length);
    z = random.nextInt(searches.length);
    while(y == z) {
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
    }
    asked++;
    if(asked == 20){
      asked = 0;
      _color = Colors.white;
      x = Icons.cached;
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
      while(y == z){
        y = random.nextInt(searches.length);
        z = random.nextInt(searches.length);
      }
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EndQuiz()));
    }
  } else{
    playSound('wrong.wav');
    x = Icons.block;
    _color = Colors.red;
    y = random.nextInt(searches.length);
    z = random.nextInt(searches.length);
    while(y == z){
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
    }
    asked++;
    if(asked == 20){
      _color = Colors.white;
      x = Icons.cached;
      asked = 0;
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
      while(y == z){
        y = random.nextInt(searches.length);
        z = random.nextInt(searches.length);
      }
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EndQuiz()));
    }
  }
}


lower_button(context){
  if(searches[y] < searches[z]){
    playSound('right.mp3');
    x = Icons.check;
    _color = Colors.green;
    Score.coins++;
    y = random.nextInt(searches.length);
    z = random.nextInt(searches.length);
    while(y == z) {
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
    }
    asked++;
    if(asked == 20){
      _color = Colors.white;
      x = Icons.cached;
      asked = 0;
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
      while(y == z) {
        y = random.nextInt(searches.length);
        z = random.nextInt(searches.length);
      }
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EndQuiz()));
    }
  } else{
    playSound('wrong.wav');
    x = Icons.block;
    _color = Colors.red;
    y = random.nextInt(searches.length);
    z = random.nextInt(searches.length);
    while(y == z) {
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
    }
    asked++;
    if(asked == 20){
      _color = Colors.white;
      x = Icons.cached;
      asked = 0;
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
      while(y == z) {
        y = random.nextInt(searches.length);
        z = random.nextInt(searches.length);
      }
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EndQuiz()));
    }
  }
}