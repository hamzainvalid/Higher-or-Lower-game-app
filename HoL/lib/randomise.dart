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

List names = ['TikTok', 'Amazon', 'Reddit', 'Wendys', 'Microsoft', 'Twitter', 'Facebook', 'Meta', 'Burger King', 'Visa',
  'Pizza Hut', 'Google', 'Taco Bell', 'Telegram', 'Mastercard', 'YouTube', 'WeChat', 'Dominos', 'Subway', 'Apple', 'Instagram',
  'WhatsApp', 'Prada', 'McDonalds', 'Chick-Fil-A', 'Louis Vuitton', 'Chillis', 'KFC', 'Gucci', 'Snapchat', 'Cristiano Ronaldo',
  'Lionel Messi', 'Neymar Jr.', 'Serena Williams', 'Tom Brady', 'Lebron James', 'Muhammad Ali', 'Tiger Woods', 'Rafael Nadal',
  'Michale Jordan', 'Dwayne Johnson', 'Selena Gomez', 'Daniel Craig', 'Tom Cruise', 'Jennifer Lawrence', 'Tom Holland', 'Chris Evans', 'Jennifer Lopez',
  'Michael B. Jordan', 'Bradley Cooper', 'Will Smith', 'Jack Black', 'The Avengers',	'Attack On Titan',	'Peaky Blinders',	'Good Behaviour',
  'Sweet Home',	'Demon Slayer',	'Batman Vs Superman',	'Dune',	'One Piece',	'Sense 8',	'Joker',	'My Hero Academia',	'Mr Sunshine',	'Extracurricular',
  'Dogs of Berlin',	'Harry Potter',	'Matrix Resurrections',	'Deception',	'Dragon Ball Z',	'Bleach',	'Naruto',	'The Negotiation',	'Parasite',
  'Patriot',	'Hunter X Hunter',	'John Wick'];
List searches = [2310000000, 6380000000, 1360000000, 436000000, 1340000000, 11220000000, 25270000000, 1470000000, 3010000000, 3870000000,
  269000000, 11140000000, 120000000, 1100000000, 3160000000, 12740000000, 202000000, 2120000000, 2940000000, 5720000000, 9130000000,
  2160000000, 1650000000, 688000000, 120000000, 1430000000, 157000000, 161000000, 839000000, 571000000, 251000000, 177000000, 198000000,
  191000000, 339000000, 149000000, 367000000, 192000000, 159000000, 1650000000, 367000000, 388000000, 488000000, 369000000, 541000000,
  618000000, 541000000, 610000000, 978000000, 192000000, 2230000000, 2080000000, 457000000,	289000000,	28300000,	281000000,	2280000000,
  227000000,	112000000,	2910000000,	2450000000,	1200000000,	365000000,	355000000,	216000000,	29500000,	78000000,	615000000,	143000000,
  103000000,	342000000,	189000000,	567000000,	130000000,	138000000,	253000000,	883000000,	109000000];
List images = ['tiktok.jpg', 'amazon.jpg', 'reddit.jpg', 'wendys.jpg', 'microsoft.jpg', 'twitter.jpg', 'facebook.jpg', 'meta.jpg', 'burgerking.jpg', 'visa.jpg',
  'pizzahut.jpg', 'google.jpg', 'tacobell.jpg', 'telegram.jpg', 'mastercard.jpg', 'youtube.jpg', 'wechat.jpg', 'dominos.jpg', 'subway.jpg', 'apple.jpg', 'instagram.jpg',
  'whatsapp.jpg', 'prada.jpg', 'mcdonalds.jpg', 'chickfila.jpg', 'louisvitton.jpg', 'chillis.jpg', 'kfc.jpg', 'gucci.jpg', 'snapchat.jpg', 'ronaldo.jpg', 'messi.jpg', 'neymar.jpg',
  'williams.jpg', 'brady.jpg', 'lebron.jpg', 'ali.jpg', 'woods.jpg', 'nadal.jpg', 'jordan.jpg', 'johnson.jpg', 'gomez.jpg', 'craig.jpg', 'cruise.jpg', 'lawrence.jpg', 'holland.jpg',
  'evans.jpg', 'lopez.jpg', 'michaelb.jpg', 'cooper.jpg', 'smith.jpg', 'jack.jpg','avengers.jpeg',	'aot.jpeg',	'peakyblinders.jpeg',	'goodbehaviour.jpeg',	'sweethome.jpeg',	'demonslayer.jpeg',
  'batmanvsuperman.jpeg',	'dune.jpeg',	'onepiece.jpeg',	'sense8.jpeg',	'joker.jpeg',	'myheroacademia.jpeg',	'mrsunshine.jpeg',	'extracurricular.jpeg',	'dogsofberlin.jpeg',
  'harrypotter.jpeg',	'matrix.jpeg',	'deception.jpeg',	'dragonballz.jpeg',	'bleach.jpeg',	'naruto.jpeg',	'thenegotiation.jpeg',	'parasite.jpeg',	'patriot.jpeg',	'hunterxhunter.jpeg',
  'johnwick.jpeg'];


class Randomise extends StatefulWidget {
  static const String id = 'randomise';
  @override
  _RandomiseState createState() => _RandomiseState();
}


class _RandomiseState extends State<Randomise> {
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
                      backgroundImage: AssetImage('images/${images[y]}'),
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
                      backgroundImage: AssetImage('images/${images[z]}'),
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
    if(asked == 26){
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
    if(asked == 26){
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
    if(asked == 26){
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
    if(asked == 26){
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
