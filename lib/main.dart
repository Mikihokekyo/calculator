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
  _TextFieldState createState() => _TextFieldState();
}
class _TextFieldState extends State<TextField> {
  final String _expression = '1+1';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          _expression,
          style: const TextStyle(
            fontSize: 64.0,
          ),
        ),
      )
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