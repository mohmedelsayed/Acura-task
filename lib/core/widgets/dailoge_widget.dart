import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailogeHelper {
  Future<void> showDialoge({
    required context,
    required onTap,
    required weekDays,
  }) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: 270.h,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.separated(
                  itemBuilder: (ctx, index) {
                    return Center(
                        child: InkWell(
                      onTap: onTap,
                      child: Text(
                        '${weekDays[index]}',
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ));
                  },
                  separatorBuilder: (ctx, index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                  itemCount: weekDays.length,
                ),
              ),
            ),
          );
        });
  }
}
