import 'package:flutter/material.dart';
import 'package:flutter_accessibility_demo/utils/layout.dart';

class ExcludeSemanticsDemoPage extends StatelessWidget {
  const ExcludeSemanticsDemoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DemoLayout(
        title: 'ExcludeSemantics et override label',
        body: Column(
          children: [
            Semantics(
              excludeSemantics: true,
              child: Row(
                children: [
                  Text("Je suis exclu de semantics via excludeSemantics: true"),
                ],
              ),
            ),
            Semantics(
              excludeSemantics: true,
              label:
                  "Texte remplacé via label et excludeSemantics: true dans Semantics",
              child: Row(
                children: [
                  Text(
                      "Je suis exclu de semantics via excludeSemantics: true\n mais j'ai un paramètre label"),
                ],
              ),
            ),
            Semantics(
                child: const ExcludeSemantics(child: Text("TER")),
                label: "T.E.R.")
          ],
        ));
  }
}
