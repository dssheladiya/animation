import 'package:flutter/material.dart';

class borderTweenDemo extends StatefulWidget {
  const borderTweenDemo({Key? key}) : super(key: key);

  @override
  State<borderTweenDemo> createState() => _borderTweenDemoState();
}

class _borderTweenDemoState extends State<borderTweenDemo> {
  Color mix = Colors.blue;
  double _targetSize = 200;
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
                if (mix == Colors.blue) {
                  mix = Colors.orange;
                } else
                  mix = Colors.blue;
              },
              tween: BorderTween(
                  begin: Border.symmetric(
                      horizontal: BorderSide(color: Colors.orange)),
                  end: Border.symmetric(horizontal: BorderSide(color: mix))),
              duration: Duration(seconds: 1),
              builder: (BuildContext context, Object? value, Widget? child) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.symmetric(
                      horizontal: BorderSide(color: mix, width: 20),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 30),
          TweenAnimationBuilder(
            onEnd: () {
              setState(() {
                if (_targetSize == 100) {
                  _targetSize = 200;
                } else {
                  _targetSize = 100;
                }
              });
            },
            tween: Tween(begin: 100, end: _targetSize),
            duration: Duration(seconds: 2),
            builder: (BuildContext context, Object? value, Widget? child) {
              return Container(
                height: _targetSize,
                width: _targetSize,
                // color: _targetSize == 100 ? Colors.green : Colors.red
                decoration: BoxDecoration(
                    gradient: RadialGradient(center: Alignment.center, colors: [
                      _targetSize == 100 ? Colors.yellow : Colors.green,
                      _targetSize == 100 ? Colors.blue : Colors.red
                    ]),
                    shape: BoxShape.rectangle),
              );
            },
          ),
        ],
      ),
    );
  }
}
