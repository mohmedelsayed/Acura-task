import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NightShiftWidget extends StatelessWidget {
  GestureTapCallback fromOnTap;
  GestureTapCallback toOnTap;
  String fromTitle;
  String toTitle;
  NightShiftWidget(
      {Key? key,
      required this.fromOnTap,
      required this.toOnTap,
      required this.fromTitle,
      required this.toTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Night Shift",
              style: TextStyle(fontSize: 25),
            )),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: fromOnTap,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$fromTitle'),
                      Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(
                      50.r,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: InkWell(
                onTap: toOnTap,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  height: 50.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$toTitle'),
                      Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(
                      50.r,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
