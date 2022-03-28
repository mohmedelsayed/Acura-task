import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivationWidget extends StatelessWidget {
  final String widgettitle, widgetSubtitle;
  ValueChanged<bool>? onChanged;
  bool activationValue;
  bool isHaveTitle;
  ActivationWidget({
    Key? key,
    this.widgettitle = 'Activation',
    this.widgetSubtitle = 'Off',
    required this.activationValue,
    required this.onChanged,
    this.isHaveTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        isHaveTitle
            ? Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "$widgettitle",
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                  textAlign: TextAlign.center,
                ))
            : const Text(''),
        SizedBox(
          height: isHaveTitle ? 15.h : 0.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$widgetSubtitle",
              style: TextStyle(
                fontSize: 20.sp,
                color: isHaveTitle ? Colors.grey : Colors.black,
              ),
            ),
            Transform.scale(
              scale: 1,
              child: CupertinoSwitch(
                value: activationValue,
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
