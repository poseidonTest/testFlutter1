import 'package:flutter/material.dart';
import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'dart:isolate';
import 'dart:ui';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
// import 'package:foreground_service/foreground_service.dart';
import 'package:android_intent/android_intent.dart';
import 'package:android_intent/flag.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:weather/weather.dart';

void main() {
  runApp(Phoenix(
    child: AlarmWeather(),
  ));
}

class AlarmWeather extends StatefulWidget {
  @override
  _AlarmWeatherState createState() => _AlarmWeatherState();
}

class _AlarmWeatherState extends State<AlarmWeather> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Project",
      home: MainPage(),
      routes: {
        "/page1": (context) => MainPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _curPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: const Text('Alarm and Weather'),
      ),
      body: Container(), //getPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ), // getButton(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _curPageIndex = index;
          });
          if (index == 1) {
            // getWeather();
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
              size: 30,
              color: _curPageIndex == 0 ? Colors.blue : Colors.black54,
            ),
            label: "Alarm",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.wb_sunny,
              size: 30,
              color: _curPageIndex == 1 ? Colors.blue : Colors.black54,
            ),
            label: "Weather",
          )
        ],
      ),
    );
  }
}
