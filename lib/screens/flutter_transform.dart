import 'package:animations_playground/transform/rotate.dart';
import 'package:animations_playground/transform/scale.dart';
import 'package:animations_playground/transform/translate.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class FlutterTransformPage extends StatefulWidget {
  const FlutterTransformPage({Key? key}) : super(key: key);

  @override
  State<FlutterTransformPage> createState() => _FlutterTransformPageState();
}

class _FlutterTransformPageState extends State<FlutterTransformPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Transform Types',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: const CustomText(
                '👉',
                size: 30,
              ),
              title: const CustomText(
                'Scale',
                size: 18,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const FlutterScaleExample()));
              },
            ),
            const Divider(),
            ListTile(
              leading: const CustomText(
                '👉',
                size: 30,
              ),
              title: const CustomText(
                'Rotate',
                size: 18,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const FlutterRotateExample()));
              },
            ),
            const Divider(),
            ListTile(
              leading: const CustomText(
                '👉',
                size: 30,
              ),
              title: const CustomText(
                'Translate',
                size: 18,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const FlutterTranslateExample()));
              },
            ),
          ],
        ));
  }
}
