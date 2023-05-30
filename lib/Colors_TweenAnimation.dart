import 'package:flutter/material.dart';

class tweenanimationDemo extends StatefulWidget {
  const tweenanimationDemo({Key? key}) : super(key: key);

  @override
  State<tweenanimationDemo> createState() => _tweenanimationDemoState();
}

class _tweenanimationDemoState extends State<tweenanimationDemo> {
  Color colorvalue = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder(
              onEnd: () {
                setState(() {});
                if (colorvalue == Colors.red) {
                  colorvalue = Colors.green;
                } else {
                  colorvalue = Colors.red;
                }
              },
              tween: ColorTween(begin: Colors.red, end: colorvalue),
              duration: Duration(seconds: 1),
              builder: (BuildContext context, Object? value, Widget? child) {
                return Container(
                  height: 200,
                  width: 200,
                  color: colorvalue,
                );
              },
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
