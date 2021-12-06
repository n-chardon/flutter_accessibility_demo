import 'package:flutter/material.dart';
import 'package:flutter_accessibility_demo/cases/bad_interaction.dart';
import 'package:flutter_accessibility_demo/cases/contrast.dart';
import 'package:flutter_accessibility_demo/cases/landscape.dart';
import 'package:flutter_accessibility_demo/cases/merge_demos.dart';
import 'package:flutter_accessibility_demo/cases/missing_labels.dart';
import 'package:flutter_accessibility_demo/cases/no_state.dart';
import 'package:flutter_accessibility_demo/cases/semantics.dart';
import 'package:flutter_accessibility_demo/cases/text_size.dart';
import 'package:flutter_accessibility_demo/cases/unrelated_texts.dart';
import 'package:flutter_accessibility_demo/cases/headings.dart';
import 'package:flutter_accessibility_demo/cases/fields_and_errors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('Welcome to Semantics Demo App !'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
/*             ListTile(
              title: const Text('Text Size'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TextSizePage(),
                    ));
              },
            ), */
/*             ListTile(
              title: const Text('Contrast'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContrastPage(),
                    ));
              },
            ), */
            Semantics(
              button: true,
              child: ListTile(
                title: const Text('MergeSemantics'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MergeDemoPage(
                          initialyChecked: false,
                        ),
                      ));
                },
              ),
            ),
            ListTile(
              title: const Text('Semantics'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SemanticsDemoPage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Missing Labels'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MissingLabelsPage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('No State'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NoStatePage(
                        initiallyExpanded: false,
                      ),
                    ));
              },
            ),
            ListTile(
              title: const Text('Unrelated Texts'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UnrelatedTextsPage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Landscape'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LandscapePage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Bad Interaction'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BadInteractionsPage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Headings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HeadingsUsagePage(),
                    ));
              },
            ),
            ListTile(
              title: const Text('Form fields'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormFieldsPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
