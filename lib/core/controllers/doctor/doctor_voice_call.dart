import 'package:flutter/material.dart';

class DoctorVoiceCallController with ChangeNotifier {
  bool isExpanded = true;

  void toggleExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
