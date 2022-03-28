import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkingTmeRadioBtn extends StatefulWidget {
  const WorkingTmeRadioBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<WorkingTmeRadioBtn> createState() => _WorkingTmeRadioBtnState();
}

class _WorkingTmeRadioBtnState extends State<WorkingTmeRadioBtn> {
  var isRadioBtnSellected;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Working Time",
              style: TextStyle(fontSize: 25.sp),
            )),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: RadioListTile(
                value: 0,
                groupValue: isRadioBtnSellected,
                onChanged: (v) {
                  setState(() {
                    isRadioBtnSellected = v;
                  });
                },
                title: Text(
                  "24 hour /day",
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
            Expanded(
              child: RadioListTile(
                value: 1,
                groupValue: isRadioBtnSellected,
                onChanged: (v) {
                  setState(() {
                    isRadioBtnSellected = v;
                  });
                },
                title: Text(
                  "set date & time",
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          height: 50.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Day..'),
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
      ],
    );
  }
}
