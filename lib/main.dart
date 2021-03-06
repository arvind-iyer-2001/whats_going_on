import 'package:flutter/material.dart';
import 'package:whats_going_on/UI/Screens/threadScreen.dart';

// Screens
import './UI/Screens/mainScreen.dart';
import './UI/Screens/channelScreen.dart';

// Models

// Services

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What\'s Going On',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
      routes: {
        ChannelScreen.routeName: (ctx) => ChannelScreen(),
        ThreadScreen.routeName: (ctx) => ThreadScreen(),
      },
    );
  }
}
