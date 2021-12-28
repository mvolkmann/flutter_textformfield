import 'package:flutter/material.dart';
import 'my_text_field.dart';
import 'widget_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextFormField Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TextFormField Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String firstName = 'Mark';
  String lastName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyTextField(
                initialValue: firstName,
                labelText: 'First Name',
                onChanged: (value) => setState(() {
                  firstName = value;
                }),
              ),
              MyTextField(
                initialValue: lastName,
                labelText: 'Last Name',
                onChanged: (value) => setState(() {
                  lastName = value;
                }),
              ),
              Text('Hello, $firstName $lastName!'),
            ],
          ),
        ));
  }
}
