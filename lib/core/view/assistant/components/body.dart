import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_clinc.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_on_the_spot.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_video_call.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_voice_call.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_clinc_provider.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_on_the_spot_provider.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_video_call_provider.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_voice_call_provider.dart';
import 'package:mansoura_company_task/core/widgets/doctor_assistant_page_content.dart';
import 'package:mansoura_company_task/core/widgets/expanded_container.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> weekDays = [
      'Saturday',
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday'
    ];

    /// init Provider Controllers
    final clincController = Provider.of<AssistantClinicController>(context);
    final videoCallController =
        Provider.of<AssistantOnTheSpotController>(context);
    final voiceCallController =
        Provider.of<AssistantVideoCallController>(context);
    final onTheSpotController =
        Provider.of<AssistantVoiceCallController>(context);
    final clincRepo = Provider.of<AssistantClincProvider>(context);
    final voiceCallRepo = Provider.of<AssistantVoiceCallProvider>(context);
    final videoCallRepo = Provider.of<AssistantVideoCallProvider>(context);
    final onTheSpotRepo = Provider.of<AssistantOnTheSpotProvider>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpandedContainer(
            title: "Clinc",
            controller: clincController,
            child: DoctorAsistantPagesContent(
              availableDaysWidgetOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    clincRepo.setAvailableDay(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              availableDaysWidgetSubtitle: clincRepo.availableDay,
              nightShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    clincRepo.setNightShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromTitle: clincRepo.dayShiftFrom,
              dayShiftToTitle: clincRepo.dayShiftTo,
              nightShiftFromTitle: clincRepo.nightShiftFrom,
              nightShiftToTitle: clincRepo.nightShiftTo,
              dayShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    clincRepo.setDayShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              nightShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    clincRepo.setNightShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    clincRepo.setDayShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              activationValue: clincRepo.isActive,
              onChanged: (bool value) {
                clincRepo.setIsActive(value);
              },
              activationWidgetSubtitle: clincRepo.activationWidgetSubtitle,
            ),
          ),
          ExpandedContainer(
            title: "Video Call",
            controller: videoCallController,
            child: DoctorAsistantPagesContent(
              availableDaysWidgetOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    videoCallRepo.setAvailableDay(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              availableDaysWidgetSubtitle: videoCallRepo.availableDay,
              nightShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    videoCallRepo.setNightShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromTitle: videoCallRepo.dayShiftFrom,
              dayShiftToTitle: videoCallRepo.dayShiftTo,
              nightShiftFromTitle: videoCallRepo.nightShiftFrom,
              nightShiftToTitle: videoCallRepo.nightShiftTo,
              dayShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    videoCallRepo.setDayShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              nightShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    videoCallRepo.setNightShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    videoCallRepo.setDayShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              activationValue: videoCallRepo.isActive,
              onChanged: (bool value) {
                videoCallRepo.setIsActive(value);
              },
              activationWidgetSubtitle: videoCallRepo.activationWidgetSubtitle,
            ),
          ),
          ExpandedContainer(
            title: "Voice Call",
            controller: voiceCallController,
            child: DoctorAsistantPagesContent(
              availableDaysWidgetOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    voiceCallRepo.setAvailableDay(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              availableDaysWidgetSubtitle: voiceCallRepo.availableDay,
              nightShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    voiceCallRepo.setNightShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromTitle: voiceCallRepo.dayShiftFrom,
              dayShiftToTitle: voiceCallRepo.dayShiftTo,
              nightShiftFromTitle: voiceCallRepo.nightShiftFrom,
              nightShiftToTitle: voiceCallRepo.nightShiftTo,
              dayShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    voiceCallRepo.setDayShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              nightShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    voiceCallRepo.setNightShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    voiceCallRepo.setDayShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              activationValue: voiceCallRepo.isActive,
              onChanged: (bool value) {
                voiceCallRepo.setIsActive(value);
              },
              activationWidgetSubtitle: voiceCallRepo.activationWidgetSubtitle,
            ),
          ),
          ExpandedContainer(
            title: "On The Spot",
            controller: onTheSpotController,
            child: DoctorAsistantPagesContent(
              availableDaysWidgetOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    onTheSpotRepo.setAvailableDay(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              availableDaysWidgetSubtitle: onTheSpotRepo.availableDay,
              nightShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    onTheSpotRepo.setNightShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromTitle: onTheSpotRepo.dayShiftFrom,
              dayShiftToTitle: onTheSpotRepo.dayShiftTo,
              nightShiftFromTitle: onTheSpotRepo.nightShiftFrom,
              nightShiftToTitle: onTheSpotRepo.nightShiftTo,
              dayShiftToOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    onTheSpotRepo.setDayShiftTo(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              nightShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    onTheSpotRepo.setNightShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              dayShiftFromOnTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        //this right here
                        child: Container(
                          height: 270.h,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              itemBuilder: (ctx, index) {
                                return Center(
                                    child: InkWell(
                                  onTap: () {
                                    onTheSpotRepo.setDayShiftFrom(
                                      weekDays[index],
                                    );
                                    Navigator.of(context).pop();
                                  },
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
              },
              activationValue: onTheSpotRepo.isActive,
              onChanged: (bool value) {
                onTheSpotRepo.setIsActive(value);
              },
              activationWidgetSubtitle: onTheSpotRepo.activationWidgetSubtitle,
            ),
          ),
        ],
      ),
    );
  }
}
