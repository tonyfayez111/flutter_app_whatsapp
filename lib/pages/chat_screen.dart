import 'package:flutter/material.dart';
import 'package:flutter_app_whatsapp/pages/personal_page.dart';
import 'chat_module.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => new Column(children: <Widget>[
        new Divider(
          height: 10,
        ),
        new ListTile(
          leading: new CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: Colors.grey,
            backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
          ),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Text(
                dummyData[i].name,
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
              new Text(dummyData[i].time,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 14)),
            ],
          ),
          subtitle: new TextSelectionToolbarTextButton(
            padding: const EdgeInsets.only(top: 5),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => personalchat()),
              );
            },
            child: new Text(
              dummyData[i].message,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        )
      ]),
    );
  }
}
