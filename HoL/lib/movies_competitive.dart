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

List names = ['The Avengers',	'Attack On Titan',	'Peaky Blinders',	'Good Behaviour',	'Sweet Home',	'Demon Slayer',	'Batman Vs Superman',	'Dune',	'One Piece',	'Sense 8',	'Joker',	'My Hero Academia',	'Mr Sunshine',	'Extracurricular',	'Dogs of Berlin',	'Harry Potter',	'Matrix Resurrections',	'Deception',	'Dragon Ball Z',	'Bleach',	'Naruto',	'The Negotiation',	'Parasite',	'Patriot',	'Hunter X Hunter',	'John Wick'];
List searches = [457000000,	289000000,	28300000,	281000000,	2280000000,	227000000,	112000000,	2910000000,	2450000000,	1200000000,	365000000,	355000000,	216000000,	29500000,	78000000,	615000000,	143000000,	103000000,	342000000,	189000000,	567000000,	130000000,	138000000,	253000000,	883000000,	109000000];
List images = ['avengers',	'aot',	'peakyblinders',	'goodbehaviour',	'sweethome',	'demonslayer',	'batmanvsuperman',	'dune',	'onepiece',	'sense8',	'joker',	'myheroacademia',	'mrsunshine',	'extracurricular',	'dogsofberlin',	'harrypotter',	'matrix',	'deception',	'dragonballz',	'bleach',	'naruto',	'thenegotiation',	'parasite',	'patriot',	'hunterxhunter',	'johnwick'];


class MoviesCompetitive extends StatefulWidget {
  static const String id = 'movies_competitive';
  @override
  _MoviesCompetitiveState createState() => _MoviesCompetitiveState();
}


class _MoviesCompetitiveState extends State<MoviesCompetitive> {
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
                      backgroundImage: AssetImage('images/${images[y]}.jpeg'),
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
                      backgroundImage: AssetImage('images/${images[z]}.jpeg'),
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

