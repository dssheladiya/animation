import 'package:flutter/material.dart';

class AnimationcontainerDemo extends StatefulWidget {
  const AnimationcontainerDemo({Key? key}) : super(key: key);

  @override
  State<AnimationcontainerDemo> createState() => _AnimationcontainerDemoState();
}

class _AnimationcontainerDemoState extends State<AnimationcontainerDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  double height = 200;
  double width = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          height = height == 100 ? 200 : 100;
          width = width == 100 ? 200 : 100;
        },
      ),
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Colors.red,
        ),
      ),
    );
  }
}
