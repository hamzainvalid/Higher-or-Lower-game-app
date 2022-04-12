import 'package:flutter/material.dart';
import 'package:higher_or_lower/main.dart';
import 'package:sizer/sizer.dart';
import 'package:higher_or_lower/credits.dart';
import 'package:higher_or_lower/disclaimers.dart';
import 'package:higher_or_lower/feedback.dart';
import 'package:higher_or_lower/categories.dart';

class SettingsScreen extends StatefulWidget {
  static const String id = 'settings';
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class volumeControl{
  static var mute = false;
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _value = false;
  static var _value1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff7ef),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home_rounded, size: 32.sp, color: Colors.black),
          onPressed: () {
            Score.coins = 0;
            Navigator.pushNamed(context, Categories.id);
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
              Container( // Container Text: settings
                child: Text(
                  'SETTINGS',
                  style: TextStyle(fontSize: 30, fontFamily: 'Revalia-Regular'),
                ),
              ), // Container Text: settings
              SizedBox(height: 30),
              Container(
                width: 320,
                decoration:
                  BoxDecoration(color: Color(0xffffb830), borderRadius: BorderRadius.circular(20.0)),
                child: SwitchListTile(
                  value: _value1,
                  onChanged: (value) {
                    setState(() {
                      _value1 = value;
                      volumeSwitch();
                    });
                  },
                  inactiveThumbColor: Colors.blueGrey,
                  activeColor: Color(0xff3db2ff),
                  inactiveTrackColor: Colors.grey,
                  title: Text(
                    'VOLUME',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Poppins-Regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ), // Switch volume
              SizedBox(height: 50),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff3db2ff),
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                    minimumSize: Size(320, 55),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, FeedbackScreen.id);
                  }, //Go to feedback screen
                  child: const Text(
                    'FEEDBACK',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ), //Feedback Button
              SizedBox(height: 30.0),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff3db2ff),
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                    minimumSize: Size(320, 55),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, CreditsScreen.id);
                  }, //Go to credits screen
                  child: const Text(
                    'CREDITS',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ), //Credits button
              SizedBox(height: 30.0),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff3db2ff),
                    onPrimary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                    minimumSize: Size(320, 55),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, DisclaimersScreen.id);
                  }, //Go to disclaimer screen
                  child: const Text(
                    'DISCLAIMER',
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins-Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
              ), //disclaimer button
            ],
          ),
        ),
      ),
    );
  }
}

volumeSwitch(){
  if(_SettingsScreenState._value1 == false){
    volumeControl.mute = true;
    print(volumeControl.mute);
  }else{
    volumeControl.mute = false;
    print(volumeControl.mute);
  }
}
