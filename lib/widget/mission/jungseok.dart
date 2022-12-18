import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class Jungseok extends StatefulWidget {
  Jungseok(
      {Key? key,
      required this.targetLongitude,
      required this.targetLatitude,
      required this.title})
      : super(key: key);
  double targetLatitude;

  double targetLongitude;

  String title;

  @override
  State<Jungseok> createState() => _JungseokState();
}

class _JungseokState extends State<Jungseok> {
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
  }

  double latitude = 0;
  double longitude = 0;

  // double targetLatitude = 37.4493;
  // double targetLongitude = 126.6527;

  bool isfind = false;

  double meter = 10000;

  @override
  void initState() {
    //  // TODO: implement initState
    super.initState();
    init();
  }

  late Stream<double> str;
  late StreamSubscription<double> subscription;

  init() {
    str = distanceStream();
    subscription = str.listen((event) {
      print("distance: $event");
      meter = event;
      if (meter <= 50) {
        isfind = true;
      }
      setState(() {});
    });
  }

  Stream<double> distanceStream() async* {
    for (int i = 0; i <= 6000; i++) {
      print(i);

      double met = await setPosition();
      yield met;
      await Future.delayed(Duration(seconds: 1));
    }
  }

  @override
  dispose() {
    super.dispose();

    subscription.cancel();
  }

  Future<double> setPosition() async {
    Position current = await _determinePosition();
    latitude = current.latitude;
    longitude = current.longitude;

    Distance distance = Distance();
    double me = distance(LatLng(widget.targetLatitude, widget.targetLongitude),
        LatLng(latitude, longitude));

    return me;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.title}"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text("latitude:$latitude"),
            // Text("longitude:$longitude"),
            // SizedBox(height: 10),
            //
            // Text("목표 latitude:${widget.targetLatitude}"),
            // Text("목표 longitude:${widget.targetLongitude}"),

            Text(widget.title),

            Text("${meter}m"),
            SizedBox(height: 10),
            Text(isfind ? "미션 성공!" : "미션 진행중"),

            Row(),
            // CupertinoButton(
            //     child: Text("도착!"),
            //     onPressed: () {
            //       setPosition();
            //     })
          ],
        ));
  }
}
