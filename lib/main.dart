import 'package:animation/AnimationContainer.dart';
import 'package:animation/lottie.dart';
import 'package:flutter/material.dart';

import 'AnimationController.dart';
import 'Colors_TweenAnimation.dart';
import 'borderRadius_Tweenanimation.dart';
import 'border_Tweenanimation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Denish(),
    );
  }
}
