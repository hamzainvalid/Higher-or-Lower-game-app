import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdmobHelper {
  late InterstitialAd _interstitialAd;
  bool isLoaded = false;
  static initialization(){
    if(MobileAds.instance == null){
      MobileAds.instance.initialize();
    }
  }
  void createInterad(){
    InterstitialAd.load(adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: AdRequest(),
        adLoadCallback:,
    );
  }

  void showInterAd(){
    if(_interstitialAd == null){
      return;
    }
  }
}