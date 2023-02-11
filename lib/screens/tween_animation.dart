import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  var _scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Transform Widget',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              builder: (context, value, child) {
                return Transform.scale(
                  scale: value,
                  child: child,
                );
              },
              tween: Tween(begin: 1, end: _scale),
              duration: const Duration(milliseconds: 600),
              child: const CustomText(
                'Dele',
                size: 10,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Slider.adaptive(
              value: _scale,
              max: 15,
              min: 1,
              onChanged: (value) {
                setState(
                  () => _scale = value,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
