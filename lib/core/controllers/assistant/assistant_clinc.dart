import 'package:flutter/material.dart';

class AssistantClinicController with ChangeNotifier {
  bool isExpanded = true;

  void toggleExpanded() {
    isExpanded = !isExpanded;
    notifyListeners();
  }
}
