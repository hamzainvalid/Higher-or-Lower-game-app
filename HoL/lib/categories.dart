
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/sports.dart';
import 'package:higher_or_lower/hollywood.dart';
import 'package:higher_or_lower/brands.dart';
import 'package:higher_or_lower/movies.dart';
import 'package:higher_or_lower/randomise.dart';
import 'package:higher_or_lower/main.dart';
import 'package:higher_or_lower/start_quiz.dart';
import 'package:higher_or_lower/end_quiz.dart';
import 'package:higher_or_lower/settings.dart';

class packs{
  static var hollywood = 0;
  static var sports = 0;
  static var movies = 0;
  static var brands = 0;
  static var geography = 0;
  static var history = 0;
  static var crypto = 0;
  static var youtube = 0;
  static var packimg = '';
}

var selection_hollywood = Colors.transparent;
var selection_sports = Colors.transparent;
var selection_movies = Colors.transparent;
var selection_brands = Colors.transparent;
var selection_geography = Colors.transparent;
var selection_history = Colors.transparent;
var selection_crypto = Color(0xFFD6D6D6);
var selection_youtube = Color(0xFFD6D6D6);

var ml = true;
var bl = true;
var gl = true;
var hl = true;
var cl = true;
var yl = true;

var mimg = 'images/movies_tv.jpg';
var bimg = 'images/brands.jpg';
var gimg = 'images/geography.jpg';
var himg = 'images/history.jpg';
var cimg = 'images/crypto.jpg';
var yimg = 'images/youtube.jpg';




class Categories extends StatefulWidget {
  static const String id = 'categories';
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.home_rounded, size: 32.sp, color: Colors.black),
          onPressed: () {
            Navigator.pushNamed(context, Categories.id);
          },
        ),
        title: Text(
          "HighScore: ${localVars.score}",
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
        shape: Border(
            bottom: BorderSide(
              color: Colors.black, width: 1,
            )
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child:
                  Text(
                    'Choose your pack and tap on start!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Revalia-Regular', fontSize: 17.sp, height: 0.175.h),
                  ),
                ),

                SizedBox(height: 4.h),

                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 16.w),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                              child: CircleAvatar(
                                backgroundColor: selection_hollywood,
                                radius: 8.h,
                                child: CircleAvatar(
                                    radius: 7.3.h,
                                    backgroundImage: AssetImage('images/hollywood.jpg')
                                ),
                              ),
                              onTap: (){
                                setState(() {
                                    selection_hollywood = Color(0xffff7800);
                                    selection_sports = Colors.transparent;
                                    selection_movies = Colors.transparent;
                                    selection_brands = Colors.transparent;
                                    selection_geography = Colors.transparent;
                                    selection_history = Colors.transparent;
                                    //selection_crypto = Colors.transparent;
                                    //selection_youtube = Colors.transparent;
                                    packs.hollywood = 1;
                                    packs.sports = 0;
                                    packs.movies = 0;
                                    packs.brands = 0;
                                    packs.geography = 0;
                                    packs.history = 0;
                                    packs.crypto = 0;
                                    packs.youtube = 0;
                                    packs.packimg = 'hollywood.jpg';
                                });
                              },
                            ),
                            Text(
                              'HOLLYWOOD',
                              style:
                              TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                            ),
                          ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            child: CircleAvatar(
                              backgroundColor: selection_sports,
                              radius: 8.h,
                              child: CircleAvatar(
                                 radius: 7.3.h,
                                 backgroundImage: AssetImage('images/sports.png')
                                 ),
                              ),
                            onTap: (){
                              setState(() {
                                packs.packimg = 'sports.png';
                                selection_hollywood = Colors.transparent;
                                selection_sports = Color(0xffff7800);
                                selection_movies = Colors.transparent;
                                selection_brands = Colors.transparent;
                                selection_geography = Colors.transparent;
                                selection_history = Colors.transparent;
                                //selection_crypto = Colors.transparent;
                                //selection_youtube = Colors.transparent;
                                packs.hollywood = 0;
                                packs.sports = 1;
                                packs.movies = 0;
                                packs.brands = 0;
                                packs.geography = 0;
                                packs.history = 0;
                                packs.crypto = 0;
                                packs.youtube = 0;
                              });
                            },
                          ),
                          Text(
                            'SPORTS',
                            style:
                            TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                          ),
                        ],
                      ),
                      SizedBox(width: 16.w),
                ],),



                SizedBox(height: 2.5.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 16.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: selection_movies,
                            radius: 8.h,
                            child: CircleAvatar(
                                radius: 7.3.h,
                                backgroundImage: AssetImage(mimg)
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(ml == false) {
                                packs.packimg = 'movies_tv.jpg';
                                selection_hollywood = Colors.transparent;
                                selection_sports = Colors.transparent;
                                selection_movies = Color(0xffff7800);
                                selection_brands = Colors.transparent;
                                selection_geography = Colors.transparent;
                                selection_history = Colors.transparent;
                                //selection_crypto = Colors.transparent;
                                //selection_youtube = Colors.transparent;
                                packs.hollywood = 0;
                                packs.sports = 0;
                                packs.movies = 1;
                                packs.brands = 0;
                                packs.geography = 0;
                                packs.history = 0;
                                packs.crypto = 0;
                                packs.youtube = 0;
                              }else{
                                showlockedDialog(context);
                              }
                            });
                          },
                        ),
                        Text(
                          'MOVIES/TV',
                          style:
                          TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: selection_brands,
                            radius: 8.h,
                            child: CircleAvatar(
                                radius: 7.3.h,
                                backgroundImage: AssetImage(bimg)
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(bl == false) {
                                packs.packimg = 'brands.png';
                                selection_hollywood = Colors.transparent;
                                selection_sports = Colors.transparent;
                                selection_movies = Colors.transparent;
                                selection_brands = Color(0xffff7800);
                                selection_geography = Colors.transparent;
                                selection_history = Colors.transparent;
                                //selection_crypto = Colors.transparent;
                                //selection_youtube = Colors.transparent;
                                packs.hollywood = 0;
                                packs.sports = 0;
                                packs.movies = 0;
                                packs.brands = 1;
                                packs.geography = 0;
                                packs.history = 0;
                                packs.crypto = 0;
                                packs.youtube = 0;
                              }else{
                                showlockedDialog(context);
                              }
                            });
                          },
                        ),
                        Text(
                          'BRANDS',
                          style:
                          TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    SizedBox(width: 16.w),
                  ],),



                SizedBox(height: 2.5.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 16.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: selection_geography,
                            radius: 8.h,
                            child: CircleAvatar(
                                radius: 7.3.h,
                                backgroundImage: AssetImage(gimg)
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(gl == false) {
                                selection_hollywood = Colors.transparent;
                                selection_sports = Colors.transparent;
                                selection_movies = Colors.transparent;
                                selection_brands = Colors.transparent;
                                selection_geography = Color(0xffff7800);
                                selection_history = Colors.transparent;
                                //selection_crypto = Colors.transparent;
                                //selection_youtube = Colors.transparent;
                                packs.hollywood = 0;
                                packs.sports = 0;
                                packs.movies = 0;
                                packs.brands = 0;
                                packs.geography = 1;
                                packs.history = 0;
                                packs.crypto = 0;
                                packs.youtube = 0;
                                packs.packimg = 'geography.jpg';
                              }else{
                                showlockedDialog(context);
                              }
                            });
                          },
                        ),
                        Text(
                          'GEOGRAPHY',
                          style:
                          TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: selection_history,
                            radius: 8.h,
                            child: CircleAvatar(
                                radius: 7.3.h,
                                backgroundImage: AssetImage(himg)
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(hl == false) {
                                selection_hollywood = Colors.transparent;
                                selection_sports = Colors.transparent;
                                selection_movies = Colors.transparent;
                                selection_brands = Colors.transparent;
                                selection_geography = Colors.transparent;
                                selection_history = Color(0xffff7800);
                                //selection_crypto = Colors.transparent;
                                //selection_youtube = Colors.transparent;
                                packs.hollywood = 0;
                                packs.sports = 0;
                                packs.movies = 0;
                                packs.brands = 0;
                                packs.geography = 0;
                                packs.history = 1;
                                packs.crypto = 0;
                                packs.youtube = 0;
                                packs.packimg = 'history.jpg';
                              }else{
                                showlockedDialog(context);
                              }
                            });
                          },
                        ),
                        Text(
                          'HISTORY',
                          style:
                          TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    SizedBox(width: 16.w),
                  ],),

                SizedBox(height: 5.h),
                Container(
                  child:
                  Text('Premium', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFBDBDBD))),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 16.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: selection_crypto,
                            radius: 8.h,
                            child: CircleAvatar(
                                radius: 7.3.h,
                                backgroundImage: AssetImage(cimg)
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(cl == false) {
                                selection_hollywood = Colors.transparent;
                                selection_sports = Colors.transparent;
                                selection_movies = Colors.transparent;
                                selection_brands = Colors.transparent;
                                selection_geography = Colors.transparent;
                                selection_history = Colors.transparent;
                                selection_crypto = Color(0xffff7800);
                                //selection_youtube = Colors.transparent;
                                packs.hollywood = 0;
                                packs.sports = 0;
                                packs.movies = 0;
                                packs.brands = 0;
                                packs.geography = 0;
                                packs.history = 0;
                                packs.crypto = 1;
                                packs.youtube = 0;
                                packs.packimg = 'crypto.jpg';
                              }else{
                                showPremiumDialog(context);
                              }
                            });
                          },
                        ),
                        Text(
                          'CRYPTO',
                          style:
                          TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        InkWell(
                          child: CircleAvatar(
                            backgroundColor: selection_youtube,
                            radius: 8.h,
                            child: CircleAvatar(
                                radius: 7.3.h,
                                backgroundImage: AssetImage(yimg)
                            ),
                          ),
                          onTap: (){
                            setState(() {
                              if(yl == false) {
                                selection_hollywood = Colors.transparent;
                                selection_sports = Colors.transparent;
                                selection_movies = Colors.transparent;
                                selection_brands = Colors.transparent;
                                selection_geography = Colors.transparent;
                                selection_history = Colors.transparent;
                                //selection_crypto = Colors.transparent;
                                selection_youtube = Color(0xffff7800);
                                packs.hollywood = 0;
                                packs.sports = 0;
                                packs.movies = 0;
                                packs.brands = 0;
                                packs.geography = 0;
                                packs.history = 0;
                                packs.crypto = 0;
                                packs.youtube = 1;
                                packs.packimg = 'youtube.jpg';
                              }else{
                                showPremiumDialog(context);
                              }
                            });
                          },
                        ),
                        Text(
                          'YOUTUBE',
                          style:
                          TextStyle(fontSize: 13.sp, fontFamily: 'Poppins-Regular'),
                        ),
                      ],
                    ),
                    SizedBox(width: 16.w),
                  ],),


                SizedBox(height: 2.5.h),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Container(
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffff7800),
                        onPrimary: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                        minimumSize: Size(38.w, 8.h),
                        elevation: 2.h,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      icon: Icon(Icons.play_circle_outline_rounded, size: 23.sp),
                      label: Text(
                        'START',
                        style:
                        TextStyle(fontSize: 16.sp, fontFamily: 'Poppins-Regular'),
                      ),
                      onPressed: () {
                        start_game(context);
                      },
                    ),
                  ),
                      SizedBox(width: 5.w),
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffffffff),
                            onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
                            minimumSize: Size(25.w, 8.h),
                            elevation: 2.h,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          child: Text(
                            '🔀',
                            style:
                            TextStyle(fontSize: 23.sp, fontFamily: 'Poppins-Regular'),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, Randomise.id);
                          },
                        ),
                      ),
                ],),
                SizedBox(height: 4.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

reset_state(){
  selection_hollywood = Colors.transparent; selection_sports = Colors.transparent; selection_movies = Colors.transparent;
  selection_brands = Colors.transparent; selection_geography = Colors.transparent; selection_history = Colors.transparent;
  iconimg.chosenimg = packs.packimg; selection_crypto = Color(0xFFD6D6D6); selection_youtube = Color(0xFFD6D6D6);
}

start_game(context) {
  if(packs.hollywood > 0){
    reset_state();
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => StartQuiz()));
  } else{
    if(packs.sports > 0){
      reset_state();
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StartQuiz()));
    }
    else{
      if(packs.movies > 0){
        reset_state();
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StartQuiz()));
      }
      else{
        if(packs.brands > 0){
          reset_state();
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StartQuiz()));
        }
        else{
          if(packs.geography > 0){
            reset_state();
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StartQuiz()));
          }
          else{
            if(packs.history > 0){
              reset_state();
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StartQuiz()));
            }
            else{
              if(packs.crypto > 0){
                reset_state();
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartQuiz()));
              }
              else {
                if (packs.youtube > 0) {
                  reset_state();
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartQuiz()));
                }
                else {
                  showAlertDialog(context);
                }
              }
            }
          }
        }
      }
    }
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0.w)
      ),
      backgroundColor: Colors.blueGrey,
      textStyle: const TextStyle(fontSize: 16),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: const Text('Close'),
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0.w),
    ),
    backgroundColor: Color(0xfffff7ef),
    content: Text("Please choose a pack."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showlockedDialog(BuildContext context) {
  // set up the button
  Widget Button1 = TextButton(
    child: Text("CLOSE"),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0.w)
      ),
      backgroundColor: Colors.blueGrey,
      textStyle: const TextStyle(fontSize: 16),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget Button2 = TextButton(
    child: Text("Buy 1.99!"),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0.w)
      ),
      backgroundColor: Colors.blueGrey,
      textStyle: const TextStyle(fontSize: 16),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget Button3 = TextButton(
    child: Text("Free ad!"),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0.w)
      ),
      backgroundColor: Colors.blueGrey,
      textStyle: const TextStyle(fontSize: 16),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text('This pack is locked!'),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0.w),
    ),
    backgroundColor: Color(0xfffff7ef),
    content: Text("Buy for 1.99 or watch the free ads to unlock the pack."),
    actions: [
      Button1,
      Button2,
      Button3,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showPremiumDialog(BuildContext context) {
  // set up the button
  Widget Button1 = TextButton(
    child: Text("CLOSE"),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0.w)
      ),
      backgroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 16),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget Button2 = TextButton(
    child: Text("Buy 2.99!"),
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0.w)
      ),
      backgroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 16),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text('Get Premium'),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0.w),
    ),
    backgroundColor: Colors.orange,
    content: Text("Unlock all the premium packs for 2.99! Buy premium for 2.99 and enjoy the ad-free with all the packs."),
    actions: [
      Button1,
      Button2,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}