import 'package:flutter/material.dart';

class AssistantOnTheSpotController with ChangeNotifier {
  bool isExpanded = true;

  void toggleExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
