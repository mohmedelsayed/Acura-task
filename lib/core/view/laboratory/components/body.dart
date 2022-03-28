import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansoura_company_task/core/widgets/activation_widget.dart';
import 'package:mansoura_company_task/core/widgets/available_days_widget.dart';
import 'package:mansoura_company_task/core/widgets/day_shift_widget.dart';
import 'package:mansoura_company_task/core/widgets/night_shift_widget.dart';
import 'package:mansoura_company_task/core/widgets/pricing_widget.dart';
import 'package:mansoura_company_task/core/widgets/un_availablity.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 5.h,
        ),
        width: width,
        height: height,
        child: Column(
          children: [
            ActivationWidget(
              isHaveTitle: false,
              widgettitle: 'Receive Request',
              widgetSubtitle: 'Receive Request',
              onChanged: (bool value) {},
              activationValue: false,
            ),

            Divider(
              thickness: 1.r,
            ),

            PricingWidget(
              isHaveTitle: false,
              textHint: '%',
              widgetSubtitle: 'discount For Request',
            ),
            SizedBox(
              height: 10.h,
            ),
            Divider(
              thickness: 1.r,
            ),

            AvailableDaysWidget(
              title: 'Working Time',
              onTap: () {},
            ),
            SizedBox(
              height: 10.h,
            ),

            DayShiftWidget(
              toTitle: '',
              fromTitle: '',
              toOnTap: () {},
              fromOnTap: () {},
            ),
            //.........................................................//
            SizedBox(
              height: 10.h,
            ),

            NightShiftWidget(
              toOnTap: () {},
              fromOnTap: () {},
              toTitle: '',
              fromTitle: '',
            ),
            //.........................................................//
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.fromSize(
                  size: Size(44.w, 44.h),
                  child: ClipOval(
                    child: Material(
                      color: Colors.blueAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {},
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30.r,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1.r,
            ),
            UnAvailability(),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.fromSize(
                  size: Size(44.w, 44.h),
                  child: ClipOval(
                    child: Material(
                      color: Colors.blueAccent,
                      child: InkWell(
                        splashColor: Colors.green,
                        onTap: () {},
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30.r,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: width * 0.9,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        50.r,
                      ),
                      color: Colors.blueAccent,
                    ),
                    child: Center(
                        child: Text(
                      'save settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                      ),
                    )),
                  ),
                ),
              ],
            ),
            //.......................................................//
          ],
        ),
      ),
    );
  }
}
