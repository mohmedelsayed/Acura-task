import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableDaysWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  GestureTapCallback onTap;
  AvailableDaysWidget({
    Key? key,
    this.title = 'Available',
    this.subTitle = 'Day..',
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "$title",
              style: TextStyle(fontSize: 25.sp),
            )),
        SizedBox(
          height: 10.h,
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            height: 50.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$subTitle',
                ),
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
      ],
    );
  }
}
