import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelloWorld'),
      ),
      body: TestInputWidget(),
    );
  }
}

class TestInputWidget extends StatefulWidget {
  @override
  _TestInputWidgetState createState() => _TestInputWidgetState();
}

class _TestInputWidgetState extends State<TestInputWidget> {
  final controller = TextEditingController();
  String text = "";

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Void ChangeText(text) {
    setState(() {
      this.text = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
          controller: this.controller,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.message), labelText: "Type"),
          onChanged: (text) => this.ChangeText(text)),
      Text(this.text)
    ]);
  }
}
