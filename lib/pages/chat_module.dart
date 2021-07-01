import 'package:flutter/material.dart';

class chatmodel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  chatmodel({this.name, this.message, this.avatarUrl, this.time});
}

List<chatmodel> dummyData = [
  new chatmodel(
      name: "tony",
      message: " hey tony you are studying hard",
      time: "10",
      avatarUrl:
          "https://miefly.com/wp-content/uploads/2020/11/switzerland-header-2-1.jpg")
];
