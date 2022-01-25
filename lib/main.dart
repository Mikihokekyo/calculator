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
    return Expanded(
      flex: 2,
      child: Center(
        child: Container(
          color: const Color(0xff87cefa),
          child: GridView.count(
              crossAxisCount: 4,
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 3.0,
          children: [
                '7', '8', '9', '÷',
                '4', '5', '6', '×',
                '1', '2', '3', '-',
                'C', '0', '=', '+',
          ].map((key) {
            return GridTile(
              child: Button(key),
                  );
              } ).toList(),
            ),
        )
      )
      // any code
    );
  }
}

//　キーボタン
class Button extends StatelessWidget {
    final _key;
    const Button(this._key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {  },
      child: Center(
        child: Text(
           _key,
           style: const TextStyle(fontSize: 46.0),
        ),
      ),
    );
  }
}