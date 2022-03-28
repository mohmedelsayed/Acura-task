import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PricingWidget extends StatelessWidget {
  final String widgetTitle, textHint, widgetSubtitle;
  final bool isHaveTitle;
  PricingWidget({
    Key? key,
    this.textHint = 'EGP',
    this.widgetTitle = 'Pricing',
    this.widgetSubtitle = 'add price',
    this.isHaveTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Column(
      children: [
        if (isHaveTitle)
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "$widgetTitle",
                style: TextStyle(
                  fontSize: 25.sp,
                ),
              )),
        SizedBox(
          height: isHaveTitle ? 10.h : 0.h,
        ),
        Container(
          height: isHaveTitle ? 30.h : 50.h,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "$widgetSubtitle",
                  style: TextStyle(
                    fontSize: isHaveTitle ? 15.sp : 17.sp,
                  ),
                ),
              ),
              Container(
                width: 75.w,
                height: 40.h,
                child: TextField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                      top: 10.h,
                      right: 15.w,
                    ),
                    hintText: '$textHint',
                    filled: true,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: isHaveTitle ? 12.sp : 13.sp,
                    ),
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
