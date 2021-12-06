import 'package:flutter/material.dart';
import 'package:flutter_accessibility_demo/utils/layout.dart';

class SemanticsDemoPage extends StatelessWidget {
  const SemanticsDemoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DemoLayout(
        title: 'Semantics',
        body: Column(
          children: [
            Row(children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("Je suis cliquable"),
              ),
            ]),
            Row(children: [
              InkWell(
                child: const Text("Je suis cliquable"),
              ),
            ]),
          ],
        ));
  }
}
