// TODO Implement this library.
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

// ignore: camel_case_types
class messagealert222 extends StatefulWidget {
  @override
  _messagealert222State createState() => _messagealert222State();
}

// ignore: camel_case_types
class _messagealert222State extends State<messagealert222> {
  Widget build(BuildContext context) {
    return Center(
        child: new AlertDialog(
      title: Text("hi"),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('This is a demo alert dialog.'),
            Text('Would you like to approve of this message?'),
          ],
        ),
      ),
    ));
  }
}
