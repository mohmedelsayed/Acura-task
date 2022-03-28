import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioBtnWidget extends StatelessWidget {
  final String title;
  final int value;
  final isRadioBtnSellected;
  final Function onChanged;
  RadioBtnWidget({
    Key? key,
    required this.value,
    required this.isRadioBtnSellected,
    required this.title,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: isRadioBtnSellected,
      onChanged: (v) => onChanged,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
