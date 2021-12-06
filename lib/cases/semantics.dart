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
                  child: Semantics(
                checked: false, // Etat + sémantique de case à cocher
                child: const Text("Je suis une case à cocher"),
              )),
            ]),
            Row(children: [
              InkWell(
                  child: Semantics(
                toggled: false, // Etat + sémantique de case à cocher
                child: const Text("Je suis un bouton à bascule"),
              )),
            ]),
            Semantics(
              container: true,
              label: "Civilité",
              child: Column(
                children: [
                  Row(children: [
                    InkWell(
                        child: Semantics(
                      button: true,
                      inMutuallyExclusiveGroup: true,
                      checked: true,
                      child: const Text("Monsieur"),
                    )),
                  ]),
                  Row(children: [
                    InkWell(
                        child: Semantics(
                      inMutuallyExclusiveGroup: true,
                      button: true,
                      checked: false, // Etat + sémantique de case à cocher
                      child: const Text("Madame"),
                    )),
                  ]),
                ],
              ),
            ),
            Semantics(
              excludeSemantics: true,
              label: "Exclu de sémantique",
              child: Row(
                children: [
                  Text("Je suis exclu de semantics"),
                ],
              ),
            ),
            Semantics(
              //container: true,
              child: Row(
                children: [
                  Text.rich(TextSpan(
                      text: "Texte en gras",
                      style: TextStyle(fontWeight: FontWeight.bold))),
                  Text.rich(TextSpan(
                      text: "Texte en italique",
                      style: TextStyle(fontStyle: FontStyle.italic)))
                ],
              ),
            ),
          ],
        ));
  }
}
