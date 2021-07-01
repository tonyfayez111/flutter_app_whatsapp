import 'package:flutter/material.dart';
import 'chat_module.dart';
import 'package:dash_chat/dash_chat.dart';

class personalchat extends StatefulWidget {
  @override
  _personalchatState createState() => _personalchatState();
}

class _personalchatState extends State<personalchat> {
  @override
  Widget build(BuildContext context) {
    itemCount:
    dummyData.length;

    return Scaffold(
      appBar: new AppBar(
        leading: IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: new Text(dummyData[0].name),
        titleTextStyle:
            new TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      ///////////////////////////////////
      // body: Chat(
      //   messages: [],
      //   onSendPressed: (PartialText) {},
      //   user: null,
      // ),
    );
  }
}
