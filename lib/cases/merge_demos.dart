import 'package:flutter/material.dart';
import 'package:flutter_accessibility_demo/utils/layout.dart';

class MergeDemoPage extends StatefulWidget {
  final bool initialyChecked;

  const MergeDemoPage({Key? key, required this.initialyChecked})
      : super(key: key);
  @override
  State<MergeDemoPage> createState() => _MergeDemoPage();
}

class _MergeDemoPage extends State<MergeDemoPage> {
  late bool isChecked;
  @override
  initState() {
    isChecked = widget.initialyChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DemoLayout(
        title: 'Démo Merge',
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                const Text('checkbox sans merge'),
              ],
            ),
            MergeSemantics(
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                  const Text('checkbox MergeSemantics'),
                ],
              ),
            ),
            Semantics(
              container: true,
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                  ),
                  const Text('checkbox container:true'),
                ],
              ),
            ),
            Semantics(
              container: true,
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
