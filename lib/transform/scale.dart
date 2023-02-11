import 'package:flutter/material.dart';

class FlutterScaleExample extends StatefulWidget {
  const FlutterScaleExample({Key? key}) : super(key: key);

  @override
  State<FlutterScaleExample> createState() => _FlutterScaleExampleState();
}

class _FlutterScaleExampleState extends State<FlutterScaleExample> {
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
          'Transform.scale',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: _size2,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                Transform.scale(
                  scale: _size1,
                  child: Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Slider.adaptive(
              value: _size1,
              max: 2,
              min: 0,
              onChanged: (value) {
                setState(() {
                  _size1 = value;
                });
              },
            ),
            Slider.adaptive(
              value: _size2,
              max: 1,
              min: 0,
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
