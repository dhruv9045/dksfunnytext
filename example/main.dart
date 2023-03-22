import 'package:dksfunnytext/dksfunnytext.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: true,
    title: 'Carousel Pro',
    home: FunnyText(),
  ));
}

class FunnyText extends StatefulWidget {
  const FunnyText({super.key});

  @override
  State<FunnyText> createState() => _FunnyTextState();
}

class _FunnyTextState extends State<FunnyText> {
  Map<String, dynamic> emoji = {"A": '😇', "C": '😄'};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: DksFunnyText(
          simpleText: false,
          replaceSome: true,
          emoji: emoji,
          text: "ABCCB  dgbhj dghjQQQkd  DIDIJKDK AA BBA CBBA",
          style: TextStyle(color: Colors.red),
        ),
      )),
    );
  }
}
