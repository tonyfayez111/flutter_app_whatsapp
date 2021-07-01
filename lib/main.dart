import 'package:flutter/material.dart';
import 'whatsapphome.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "tony's chat app",
      theme: new ThemeData(
        primaryColor: new Color(0xFF263238),
        accentColor: new Color(0xff5c6bc0),
      ),
      home: new whatsapphome(),
    );
  }
}
