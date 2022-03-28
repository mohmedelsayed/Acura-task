import 'package:flutter/material.dart';

class DoctorOnTheSpotController with ChangeNotifier {
  bool isExpanded = true;

  void toggleExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
