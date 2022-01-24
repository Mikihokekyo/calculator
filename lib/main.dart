import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                TextField(),
                Keyboard(),
              ],
            )
        )
    );
  }
}
//=============================================================================
// 表示
class TextField extends StatefulWidget {
  const TextField({Key? key}) : super(key: key);

  @override
  _TextFiledState createState() => _TextFiledState();
}
class _TextFiledState extends State<TextField> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
//==============================================================================
// キーボード
class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // any code
    );
  }
}
//　キーボタン
class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // any code
    );
  }
}