import 'package:flutter/material.dart';
import 'package:flutter_app_whatsapp/pages/call_screen.dart';
import 'package:flutter_app_whatsapp/pages/camera_screen.dart';
import 'package:flutter_app_whatsapp/pages/chat_screen.dart';
import 'package:flutter_app_whatsapp/pages/status_screen.dart';
import 'package:flutter_app_whatsapp/pages/messagealert222.dart';
import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';

class whatsapphome extends StatefulWidget {
  @override
  _whatsapphomeState createState() => _whatsapphomeState();
}

class _whatsapphomeState extends State<whatsapphome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  Future<void> main() async {
    // Ensure that plugin services are initialized so that `availableCameras()`
    // can be called before `runApp()`
    WidgetsFlutterBinding.ensureInitialized();

    // Obtain a list of the available cameras on the device.
    final cameras = await availableCameras();
    CameraController controller;
    // Get a specific camera from the list of available cameras.
    controller = new CameraController(cameras[1], ResolutionPreset.medium);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("tony's chat app"),
          elevation: 0.7,
          bottom: new TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab(
                  icon: new Icon(Icons.camera_alt),
                ),
                new Tab(
                  text: "Chats",
                ),
                new Tab(
                  text: "status",
                ),
                new Tab(
                  text: "CALLS",
                )
              ]),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
            new Icon(Icons.more_vert),
          ],
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraAccess(),
            new ChatScreen(),
            new StatusScreen(),
            new CallsScreen(),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: new Icon(Icons.message),
            onPressed: () {
              showDialog(
                  context: context, builder: (context) => messagealert222());
            }));
  }
}
