import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:higher_or_lower/brands_competitive.dart';
import 'package:higher_or_lower/crypto.dart';
import 'package:higher_or_lower/crypto_competitive.dart';
import 'package:higher_or_lower/geography.dart';
import 'package:higher_or_lower/geography_competitive.dart';
import 'package:higher_or_lower/history.dart';
import 'package:higher_or_lower/history_competitive.dart';
import 'package:higher_or_lower/hollywood_competitive.dart';
import 'package:higher_or_lower/movies_competitive.dart';
import 'package:higher_or_lower/sports_competitive.dart';
import 'package:higher_or_lower/youtube.dart';
import 'package:higher_or_lower/youtube_competitive.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/categories.dart';
import 'package:higher_or_lower/main.dart';
import 'package:higher_or_lower/sports.dart';
import 'package:higher_or_lower/hollywood.dart';
import 'package:higher_or_lower/movies.dart';
import 'package:higher_or_lower/brands.dart';
import 'package:flutter/scheduler.dart';

var classic = 0;
var competitive = 0;

var selection_classic = Colors.transparent;
var selection_competitive = Colors.transparent;

var packimg = '';


class iconimg{
  static var chosenimg = packs.packimg;
}

class StartQuiz extends StatefulWidget {
  static const String id = 'start_quiz';
  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      appBar: AppBar(
        centerTitle: true,

        title: Text(
            "SCORE: ",
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 6.0,
                  color: Color.fromARGB(65, 0, 0, 0),
                ),
              ],
                fontFamily: 'Poppins', fontWeight: FontWeight.w300, fontSize: 18.sp, height: 1.4, color: Colors.black, ),
        ),
        backgroundColor: Colors.transparent,
        shape: Border(
            bottom: BorderSide(
                color: Colors.black, width: 1,
            )
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Ready to start HIGHER or LOWER?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Revalia-Regular', fontSize: 19.sp, height: 0.15.h),
                ),
              ),
              SizedBox(height: 5.h),
              Container(
                child: CircleAvatar(
                  radius: 35.w,
                  backgroundImage: AssetImage('images/${iconimg.chosenimg}'),
                ),
              ),
              SizedBox(height: 4.5.h),
              Container(
                width: 50.h,
                child: Text(
                  'Select the game mode!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 13.sp, height: 0.15.h),
                ),
              ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(width: 22.w),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: selection_classic,
                          radius: 6.h,
                          child: CircleAvatar(
                              radius: 5.7.h,
                              backgroundImage: AssetImage('images/classic.jpg')
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            selection_classic = Color(0xffff7800);
                            selection_competitive = Colors.transparent;
                            classic = 1;
                            competitive = 0;
                            //packimg = 'images/classic.png';
                          });
                        },
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: selection_competitive,
                          radius: 6.h,
                          child: CircleAvatar(
                              radius: 5.7.h,
                              backgroundImage: AssetImage('images/competitive.jpg')
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            //packimg = 'images/competitive.png';
                            selection_classic = Colors.transparent;
                            selection_competitive = Color(0xffff7800);
                            classic = 0;
                            competitive = 1;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(width: 16.w),
                ],),
              SizedBox(height: 4.5.h),
              Container(
                width: 26.h,
                child: Text(
                  'Compare who has more searches!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Poppins-Regular', fontSize: 13.sp, height: 1.0),
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffff7800),
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    minimumSize: Size(140, 55),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  icon: Icon(Icons.play_circle_outline_rounded, size: 5.h),
                  label: Text(
                    'START',
                    style:
                        TextStyle(fontSize: 14.sp, fontFamily: 'Poppins-Regular'),
                  ),
                  onPressed: () {
                    start_round(context);
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


delete_state(){
  packs.hollywood = 0; packs.sports = 0; packs.movies = 0; packs.brands = 0; packs.geography = 0; packs.history = 0; packs.packimg = ''; packs.crypto=0; packs.youtube=0; packimg = ''; classic = 0; competitive = 0; selection_classic = Colors.transparent; selection_competitive = Colors.transparent;
}

start_round(context) {
  if (packs.hollywood > 0) {
    if (classic > 0) {
      delete_state();
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Hollywood()));
    } else {
      if (competitive > 0) {
        delete_state();
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HollywoodCompetitive()));
      }
    }
  } else {
    if (packs.sports > 0) {
      if (classic > 0) {
        delete_state();
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Sports()));
      } else {
        if (competitive > 0) {
          delete_state();
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SportsCompetitive()));
        }
      }
    }
    else {
      if (packs.movies > 0) {
        if (classic > 0) {
          delete_state();
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Movies()));
        } else {
          if (competitive > 0) {
            delete_state();
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MoviesCompetitive()));
          }
        }
      }
      else {
        if (packs.brands > 0) {
          if (classic > 0) {
            delete_state();
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Brands()));
          } else {
            if (competitive > 0) {
              delete_state();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BrandsCompetitive()));
            }
          }
        }
        else {
          if (packs.geography > 0) {
            if (classic > 0) {
              delete_state();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Geography()));
            } else {
              if (competitive > 0) {
                delete_state();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GeographyCompetitive()));
              }
            }
          }
          else {
            if (packs.history > 0) {
              if (classic > 0) {
                delete_state();
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => History()));
              } else {
                if (competitive > 0) {
                  delete_state();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HistoryCompetitive()));
                }
              }
            }
            else {
              if (packs.crypto > 0) {
                if (classic > 0) {
                  delete_state();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Crypto()));
                } else {
                  if (competitive > 0) {
                    delete_state();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CryptoCompetitive()));
                  }
                }
              }
              else {
                if (packs.youtube > 0) {
                  if (classic > 0) {
                    delete_state();
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Youtube()));
                  } else {
                    if (competitive > 0) {
                      delete_state();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => YoutubeCompetitive()));
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}