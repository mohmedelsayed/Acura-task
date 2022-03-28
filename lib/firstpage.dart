import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansoura_company_task/core/view/assistant/assistant_screen.dart';
import 'package:mansoura_company_task/core/view/doctor/doctor_screen.dart';
import 'package:mansoura_company_task/core/view/laboratory/laboratory_screen.dart';
import 'package:mansoura_company_task/core/view/pharmacy/pharamcy_screen.dart';

import 'core/widgets/category_button_widget.dart';

class FirstPage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Page",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You are a...",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              CategoryButtonWidget(
                title: "Doctor",
                onTap: () {
                  Navigator.of(context).pushNamed(DoctorScreen.routeName);
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              CategoryButtonWidget(
                title: "Assistant",
                onTap: () {
                  Navigator.of(context).pushNamed(AssistantScreen.routeName);
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              CategoryButtonWidget(
                title: "Pharmacy",
                onTap: () {
                  Navigator.of(context).pushNamed(PharmacyScreen.routeName);
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              CategoryButtonWidget(
                title: "Laboratory",
                onTap: () {
                  Navigator.of(context).pushNamed(LaboratoryScreen.routeName);
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              CategoryButtonWidget(
                title: "Lay Center",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
