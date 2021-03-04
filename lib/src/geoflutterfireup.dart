import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import '../src/point.dart';
import '../src/collection.dart';

class Geoflutterfireup {
  Geoflutterfireup();

  GeoFireCollectionRef collection({@required Query collectionRef}) {
    return GeoFireCollectionRef(collectionRef);
  }

  GeoFirePoint point({@required double latitude, @required double longitude}) {
    return GeoFirePoint(latitude, longitude);
  }

  static const MethodChannel _channel = const MethodChannel('geoflutterfireup');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
