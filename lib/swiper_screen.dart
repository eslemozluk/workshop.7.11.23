//içinde göstereceği widget değiştireceğiz. ekranda bir değişiklik olacağı için stful olacak

import 'package:app1/question_screen.dart';
import 'package:app1/start_screen.dart';
import 'package:flutter/material.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  var _activeScreenName = "start-screen";

  void chanceScreen() {
    setState(() {
      _activeScreenName = "quiz-screen";
    });
  }

  //callback functionlar--> farkli klasörlerdeki fonsiyonları belirli bir aksiyonda çalıştırmak isteyen yapı
  //bir fonkaiyonun geriye çağırdığı baska bir fonksiyon
  //startscreen'in const'una karışmak gerekir çünkü startscreen'ni oluştururken bir argüman vermek gerekiyor.
  //final void function() baslamabutonu;

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = StartScreen(chanceScreen);
    if (_activeScreenName == "quiz-screen") {
      activeScreen = QuestionScreen();
    }
    return Container(child: activeScreen);
  }
}
