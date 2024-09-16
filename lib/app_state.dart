import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _checkIn = false;
  bool get checkIn => _checkIn;
  set checkIn(bool value) {
    _checkIn = value;
  }

  bool _conectBracelet = false;
  bool get conectBracelet => _conectBracelet;
  set conectBracelet(bool value) {
    _conectBracelet = value;
  }

  String _activePage = '';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  String _nextLesson = '';
  String get nextLesson => _nextLesson;
  set nextLesson(String value) {
    _nextLesson = value;
  }
}
