import 'package:flutter/material.dart';

import 'audio.dart';
import 'home1.dart';
import 'video.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => MyHome(),
      '/audio': (context) => audio_Page(),
      '/video': (context) => video_Page(),
    },
  ));
}
