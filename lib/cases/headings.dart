import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_accessibility_demo/utils/layout.dart';

class HeadingsUsagePage extends StatelessWidget {
  const HeadingsUsagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DemoLayout(
      title: 'Headings usage',
      body: Column(children: [
        Row(
          children: [
            const Text('Bad title', style: TextStyle(fontSize: 30)),
          ],
        ),
        Row(
          children: [
            const Text(
              "Lorem Elsass ipsum munster Miss Dahlias\n ornare nullam Yo dû.\n\n Oberschaeffolsheim mollis non Heineken\n réchime Pellentesque amet chambon turpis \n Racing. ",
            ),
          ],
        ),
        Row(children: [
          Semantics(
            header: true,
            sortKey: OrdinalSortKey(2),
            child: const Text('Good title', style: TextStyle(fontSize: 30)),
          ),
        ]),
        Row(
          children: [
            Semantics(
                sortKey: OrdinalSortKey(1),
                child: const ExcludeSemantics(child: Text("TER")),
                label: "T.E.R.")
          ],
        ),
      ]),
    );
  }
}