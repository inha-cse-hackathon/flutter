import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'jungseok.dart';

class LocationQuest extends StatefulWidget {
  const LocationQuest({Key? key, required this.map}) : super(key: key);

  final Map map;

  @override
  State<LocationQuest> createState() => _LocationQuestState();
}

class _LocationQuestState extends State<LocationQuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("메세지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("미션"),
            Text("${widget.map['questname']}"),
            Text("${widget.map['description']}"),
            CupertinoButton(
              child: Text("도전하기"),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) =>
                        Jungseok(targetLatitude: location[widget.map['id']]['latitude'],
                          targetLongitude: location[widget.map['id']]['longitude'],
                          title: widget.map['description'],
                        ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


Map location = {
  1: {
    'latitude': 37.4497,
    'longitude': 126.656,


  },
  2: {
    'latitude': 37.4493,
    'longitude': 126.6527,},
};
