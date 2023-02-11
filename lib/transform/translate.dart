import 'package:flutter/material.dart';

class FlutterTranslateExample extends StatefulWidget {
  const FlutterTranslateExample({Key? key}) : super(key: key);

  @override
  State<FlutterTranslateExample> createState() =>
      _FlutterTranslateExampleState();
}

class _FlutterTranslateExampleState extends State<FlutterTranslateExample> {
  var _size1 = 1.0;
  var _size2 = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Transform.translate',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(_size1, _size2),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.5),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Slider.adaptive(
              value: _size1,
              max: 100,
              min: -100,
              onChanged: (value) {
                setState(() {
                  _size1 = value;
                });
              },
            ),
            Slider.adaptive(
              value: _size2,
              max: 100,
              min: -100,
              onChanged: (value) {
                setState(() {
                  _size2 = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
