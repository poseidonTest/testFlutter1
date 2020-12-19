import 'package:flutter/material.dart';

class AlarmInfo {
  DateTime _alarmDate;
  TimeOfDay _alarmTime;
  bool _isAlarmOn;

  AlarmInfo(DateTime date, TimeOfDay time, bool on) {
    this._alarmDate = date;
    this._alarmTime = time;
    this._isAlarmOn = on;
  }

  setAlarmDate(DateTime date) {
    _alarmDate = date;
  }

  getAlarmDate() {
    return _alarmDate;
  }

  setAlarmTime(TimeOfDay time) {
    _alarmTime = time;
  }

  getAlarmTime() {
    return _alarmTime;
  }

  setAlarmOn(bool on) {
    _isAlarmOn = on;
  }

  isAlarmOn() {
    return _isAlarmOn;
  }
}