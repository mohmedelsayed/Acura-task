import 'package:flutter/cupertino.dart';

class AssistantVoiceCallProvider with ChangeNotifier {
  String availableDay = 'Day..';
  String dayShiftFrom = 'From..';
  String dayShiftTo = 'to..';
  String nightShiftFrom = 'From..';
  String nightShiftTo = 'to..';
  String activationWidgetSubtitle = 'Off';
  bool isActive = false;

  setIsActive(val) {
    isActive = val;
    switch (val) {
      case true:
        activationWidgetSubtitle = 'On';
        break;
      case false:
        activationWidgetSubtitle = 'Off';
        break;
    }
    notifyListeners();
  }

  setAvailableDay(val) {
    availableDay = val;
    notifyListeners();
  }

  setDayShiftFrom(val) {
    dayShiftFrom = val;
    notifyListeners();
  }

  setDayShiftTo(val) {
    dayShiftTo = val;
    notifyListeners();
  }

  setNightShiftFrom(val) {
    nightShiftFrom = val;
    notifyListeners();
  }

  setNightShiftTo(val) {
    nightShiftTo = val;
    notifyListeners();
  }
}
