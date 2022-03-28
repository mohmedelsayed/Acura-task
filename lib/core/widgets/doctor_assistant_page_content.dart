import 'package:flutter/material.dart';
import 'package:mansoura_company_task/core/widgets/activation_widget.dart';
import 'package:mansoura_company_task/core/widgets/available_days_widget.dart';
import 'package:mansoura_company_task/core/widgets/day_shift_widget.dart';
import 'package:mansoura_company_task/core/widgets/night_shift_widget.dart';
import 'package:mansoura_company_task/core/widgets/pricing_widget.dart';

class DoctorAsistantPagesContent extends StatelessWidget {
  GestureTapCallback availableDaysWidgetOnTap;
  String availableDaysWidgetSubtitle;
  GestureTapCallback dayShiftFromOnTap;
  String dayShiftFromTitle;
  GestureTapCallback dayShiftToOnTap;
  String dayShiftToTitle;
  GestureTapCallback nightShiftFromOnTap;
  String nightShiftFromTitle;
  GestureTapCallback nightShiftToOnTap;
  String nightShiftToTitle;
  String activationWidgetSubtitle;
  bool activationValue;
  ValueChanged<bool>? onChanged;
  DoctorAsistantPagesContent({
    Key? key,
    required this.nightShiftFromOnTap,
    required this.onChanged,
    required this.activationValue,
    required this.activationWidgetSubtitle,
    required this.nightShiftFromTitle,
    required this.nightShiftToOnTap,
    required this.nightShiftToTitle,
    required this.availableDaysWidgetSubtitle,
    required this.dayShiftFromOnTap,
    required this.dayShiftToOnTap,
    required this.dayShiftFromTitle,
    required this.dayShiftToTitle,
    required this.availableDaysWidgetOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ActivationWidget(
              onChanged: onChanged,
              activationValue: activationValue,
              widgetSubtitle: activationWidgetSubtitle,
            ),

            Divider(
              thickness: 1,
            ),

            PricingWidget(),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),

            AvailableDaysWidget(
              onTap: availableDaysWidgetOnTap,
              subTitle: availableDaysWidgetSubtitle,
            ),
            SizedBox(
              height: 10,
            ),

            DayShiftWidget(
              toTitle: dayShiftToTitle,
              fromTitle: dayShiftFromTitle,
              toOnTap: dayShiftToOnTap,
              fromOnTap: dayShiftFromOnTap,
            ),
            //.........................................................//
            SizedBox(
              height: 10,
            ),

            NightShiftWidget(
              toTitle: nightShiftToTitle,
              fromTitle: nightShiftFromTitle,
              toOnTap: nightShiftToOnTap,
              fromOnTap: nightShiftFromOnTap,
            ),
            //.........................................................//
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.fromSize(
                  size: Size(56, 56),
                  child: ClipOval(
                    child: Material(
                      color: Colors.blueAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            ), // <-- Icon
                            // <-- Text
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                        child: Text(
                      'save settings',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
              ],
            ),
            //.......................................................//
          ]),
    );
  }
}
