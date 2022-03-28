import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedContainer extends StatelessWidget {
  final Widget child;
  final String title;
  final controller;
  const ExpandedContainer({
    Key? key,
    required this.child,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 10.h,
            bottom: 10.h,
            left: 15.w,
          ),
          width: width,
          height: 45.h,
          decoration: BoxDecoration(
            color: Color(0xFFFAFAFA),
            border: Border.all(
              color: Color(0xDDDDDDDD),
            ),
            borderRadius: BorderRadius.circular(
              4,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$title',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xFF3B77D8,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.toggleExpanded();
                },
                icon: Icon(
                  !controller.isExpanded
                      ? Icons.expand_more
                      : Icons.expand_less,
                  size: 25.r,
                ),
              ),
            ],
          ),
        ),
        if (controller.isExpanded) child
      ],
    );
  }
}
