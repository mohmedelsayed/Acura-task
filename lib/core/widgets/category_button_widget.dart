import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final String title;
  const CategoryButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (size.width * 0.8).w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            50,
          ),
          color: Colors.transparent,
          border: Border.all(
            color: Color(
              0xFFD9D9D9,
            ),
          ),
        ),
        child: Center(
            child: Text(
          '$title',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 17.sp,
          ),
        )),
      ),
    );
  }
}
