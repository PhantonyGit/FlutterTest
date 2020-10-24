import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/style/style.dart';

// ignore: camel_case_types
class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.8);
    List<String> urls = [];
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: PageView.builder(
          controller: controller,
          itemCount: urls.length,
          itemBuilder: (context, index) => Center(
            child: MovieBox(),
          ),
        ));
  }
}

class MovieBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle,
    );
  }
}
