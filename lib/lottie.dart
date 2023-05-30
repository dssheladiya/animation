import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Denish extends StatefulWidget {
  const Denish({Key? key}) : super(key: key);

  @override
  State<Denish> createState() => _DenishState();
}

class _DenishState extends State<Denish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Lottie.network(
                "https://assets10.lottiefiles.com/packages/lf20_pWTOxQsYjN.json"),
          ),
        ],
      ),
    );
  }
}
