import 'package:flutter/material.dart';
import 'package:flutter_accessibility_demo/utils/layout.dart';

class FormFieldsPage extends StatefulWidget {
  const FormFieldsPage({Key? key}) : super(key: key);
  @override
  _FormFieldsPageState createState() => _FormFieldsPageState();
}

class _FormFieldsPageState extends State<FormFieldsPage> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  bool _validate = false;

  Widget build(BuildContext context) {
    return DemoLayout(
        title: 'Form Fields',
        body: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20),
                child: Semantics(
                    // On relie le message d'erreur via le hint
                    hint: _validate ? 'Username Can\'t Be Empty' : null,
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Full Name',
                        errorText:
                            _validate ? 'Username Can\'t Be Empty' : null,
                      ),
                      onChanged: (text) {
                        setState(() {
                          fullName = text;
                          //you can access nameController in its scope to get
                          // the value of text entered as shown below
                          //fullName = nameController.text;
                        });
                      },
                    ))),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    nameController.text.isEmpty
                        ? _validate = true
                        : _validate = false;
                  });
                },
                child: Text('Submit'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(fullName),
            )
          ],
        ));
  }
}
