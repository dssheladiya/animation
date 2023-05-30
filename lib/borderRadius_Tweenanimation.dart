import 'package:flutter/material.dart';

class borderRadiusTweenDemo extends StatefulWidget {
  const borderRadiusTweenDemo({Key? key}) : super(key: key);

  @override
  State<borderRadiusTweenDemo> createState() => _borderRadiusTweenDemoState();
}

class _borderRadiusTweenDemoState extends State<borderRadiusTweenDemo> {
  double redius = 20;
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
                if (redius == 20) {
                  redius = 40;
                } else
                  redius = 20;
              },
              tween: BorderRadiusTween(
                  begin: BorderRadius.circular(10),
                  end: BorderRadius.circular(redius)),
              duration: Duration(milliseconds: 500),
              builder: (BuildContext context, Object? value, Widget? child) {
                return Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(redius),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
