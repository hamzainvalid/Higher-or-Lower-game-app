import 'package:flutter/material.dart';
//import 'package:higher_or_lower/AdMobHelper.dart';
import 'package:higher_or_lower/geography.dart';
import 'package:higher_or_lower/geography_competitive.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/credits.dart';
import 'package:higher_or_lower/disclaimers.dart';
import 'package:higher_or_lower/feedback.dart';
import 'package:higher_or_lower/sports.dart';
import 'package:higher_or_lower/hollywood.dart';
import 'package:higher_or_lower/brands.dart';
import 'package:higher_or_lower/movies.dart';
import 'package:higher_or_lower/randomise.dart';
import 'package:higher_or_lower/settings.dart';
import 'package:higher_or_lower/start_quiz.dart';
import 'package:higher_or_lower/end_quiz.dart';
import 'package:higher_or_lower/welcome_screen.dart';
import 'package:higher_or_lower/categories.dart';
import 'package:higher_or_lower/sports_competitive.dart';
import 'package:higher_or_lower/hollywood_competitive.dart';
import 'package:higher_or_lower/movies_competitive.dart';
import 'package:higher_or_lower/brands_competitive.dart';
import 'package:higher_or_lower/history.dart';
import 'package:higher_or_lower/history_competitive.dart';
import 'package:higher_or_lower/crypto_competitive.dart';
import 'package:higher_or_lower/crypto.dart';
import 'package:higher_or_lower/youtube_competitive.dart';
import 'package:higher_or_lower/youtube.dart';
import 'package:shared_preferences/shared_preferences.dart';



void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //AdmobHelper.initialization();
  runApp(HigherOrLower());
}

class HigherOrLower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            initialRoute: WelcomeScreen.id,
            routes: {
              WelcomeScreen.id: (context) => WelcomeScreen(),
              SettingsScreen.id: (context) => SettingsScreen(),
              CreditsScreen.id: (context) => CreditsScreen(),
              DisclaimersScreen.id: (context) => DisclaimersScreen(),
              FeedbackScreen.id: (context) => FeedbackScreen(),
              StartQuiz.id: (context) => StartQuiz(),
              EndQuiz.id: (context) => EndQuiz(),
              Sports.id: (context) => Sports(),
              SportsCompetitive.id: (context) => SportsCompetitive(),
              Hollywood.id: (context) => Hollywood(),
              HollywoodCompetitive.id: (context) => HollywoodCompetitive(),
              Brands.id: (context) => Brands(),
              BrandsCompetitive.id: (context) => BrandsCompetitive(),
              Randomise.id: (context) => Randomise(),
              MoviesCompetitive.id: (context) => MoviesCompetitive(),
              Movies.id: (context) => Movies(),
              History.id: (context) => History(),
              HistoryCompetitive.id: (context) => HistoryCompetitive(),
              Geography.id: (context) => Geography(),
              GeographyCompetitive.id: (context) => GeographyCompetitive(),
              Crypto.id: (context) => Crypto(),
              CryptoCompetitive.id: (context) => CryptoCompetitive(),
              Youtube.id: (context) => Youtube(),
              YoutubeCompetitive.id: (context) => YoutubeCompetitive(),
              Categories.id: (context) => Categories(),
            },
          );
        },
    );
  }
}

class Points{
  static var points = 0;
}

class Score {
  static var coins = 0;
}

class localVars{
  static var score = 0;
}
