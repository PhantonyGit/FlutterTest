import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/Background.jpg'), fit: BoxFit.fill),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            child: Image.asset(
              "images/luffy.jpg",
            ),
          )
        ],
      ),
    );
    child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class Chess extends StatefulWidget {
  @override
  _ChessState createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Play Chess"),
        ),
        body: Center(
          child: ChessBoard(
            boardType: BoardType.darkBrown,
            size: 350.0,
            onMove: (move) {
              print("Sound");
            },
            onCheckMate: (color) {
              print(color);
            },
            onDraw: () {
              print("Draw");
            },
          ),
        ),
      ),
    );
  }
}
