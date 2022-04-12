import 'dart:math';
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

List names = ['Cristiano Ronaldo', 'Lionel Messi', 'Neymar Jr.', 'Serena Williams', 'Tom Brady', 'Lebron James', 'Muhammad Ali', 'Tiger Woods', 'Rafael Nadal', 'Michale Jordan'];
List searches = [251000000, 177000000, 198000000, 191000000, 339000000, 149000000, 367000000, 192000000, 159000000, 1650000000];
List images = ['ronaldo', 'messi', 'neymar', 'williams', 'brady', 'lebron', 'ali', 'woods', 'nadal', 'jordan'];

class SportsCompetitive extends StatefulWidget {
  static const String id = 'sports_competitive';
  @override
  _SportsCompetitiveState createState() => _SportsCompetitiveState();
}

class _SportsCompetitiveState extends State<SportsCompetitive> {
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



higher_button(context) {
  if(searches[y] > searches[z]){
    x = Icons.check;
    _color = Colors.green;
    Score.coins++;
    y = random.nextInt(searches.length);
    z = random.nextInt(searches.length);
    while(y == z){
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
    }
    asked++;
    if(asked == 25){
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
      while(y == z){
        y = random.nextInt(searches.length);
        z = random.nextInt(searches.length);
      }
      asked = 0;
      _color = Colors.white;
      x = Icons.cached;
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EndQuiz()));
    }
  } else{
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
}


lower_button(context){
  if(searches[y] < searches[z]){
    x = Icons.check;
    _color = Colors.green;
    Score.coins++;
    y = random.nextInt(searches.length);
    z = random.nextInt(searches.length);
    while(y == z){
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
    }
    asked++;
    if(asked == 25){
      _color = Colors.white;
      x = Icons.cached;
      y = random.nextInt(searches.length);
      z = random.nextInt(searches.length);
      while(y == z){
        y = random.nextInt(searches.length);
        z = random.nextInt(searches.length);
      }
      asked = 0;
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EndQuiz()));
    }
  } else{
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
}

