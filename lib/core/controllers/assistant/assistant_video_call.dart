import 'package:flutter/material.dart';

class AssistantVideoCallController with ChangeNotifier {
  bool isExpanded = true;

  void toggleExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
