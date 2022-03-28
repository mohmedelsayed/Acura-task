import 'package:flutter/material.dart';
import 'package:mansoura_company_task/core/view/assistant/assistant_screen.dart';
import 'package:mansoura_company_task/core/view/doctor/doctor_screen.dart';
import 'package:mansoura_company_task/core/view/laboratory/laboratory_screen.dart';
import 'package:mansoura_company_task/core/view/pharmacy/pharamcy_screen.dart';

final Map<String, WidgetBuilder> routes = {
  DoctorScreen.routeName: (context) => DoctorScreen(),
  AssistantScreen.routeName: (context) => AssistantScreen(),
  PharmacyScreen.routeName: (context) => PharmacyScreen(),
  LaboratoryScreen.routeName: (context) => LaboratoryScreen(),
};
