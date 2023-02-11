import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';

class ImplicitAnimationsExample extends StatefulWidget {
  const ImplicitAnimationsExample({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimationsExample> createState() =>
      _ImplicitAnimationsExampleState();
}

class _ImplicitAnimationsExampleState extends State<ImplicitAnimationsExample> {
  var _width = 120.0;
  var _height = 140.0;
  var _opacity = 0.0;
  var _angle = 0.0;
  final _animationDuration = const Duration(milliseconds: 400);

  late Color _color;
  late double _borderRadius;
  late double _margin;

  @override
  void initState() {
    super.initState();
    _setRandom();
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(
        () => _opacity = 1,
      );
    });
  }

  _setRandom() {
    _color = _randomColor();
    _margin = _randomValue();
    _borderRadius = _randomValue();
  }

  _changeSize() {
    _width = _randomValue(max: 200);
    _height = _randomValue(max: 300);
  }

  double _randomValue({int max = 80}) {
    return Random().nextDouble() * max;
  }

  Color _randomColor() {
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('implicit Animations',
            style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: _animationDuration,
              child: AnimatedContainer(
                transformAlignment: FractionalOffset.center,
                transform: Matrix4.identity()..rotateZ(_angle),
                duration: _animationDuration,
                width: _width,
                height: _height,
                margin: EdgeInsets.all(_margin),
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.circular(_borderRadius),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () => setState(
                () => _setRandom(),
              ),
              label: ' Change look 👀',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () => setState(
                () => _changeSize(),
              ),
              label: ' Change Size 🤏🏻',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () => setState(
                () => _angle = _randomValue(),
              ),
              label: ' Rotate 🔁',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
