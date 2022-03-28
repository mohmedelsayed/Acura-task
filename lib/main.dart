import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_clinc.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_on_the_spot.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_video_call.dart';
import 'package:mansoura_company_task/core/controllers/assistant/assistant_voice_call.dart';
import 'package:mansoura_company_task/core/controllers/doctor/doctor_clinc.dart';
import 'package:mansoura_company_task/core/controllers/doctor/doctor_on_the_spot.dart';
import 'package:mansoura_company_task/core/controllers/doctor/doctor_video_call.dart';
import 'package:mansoura_company_task/core/controllers/doctor/doctor_voice_call.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_clinc_provider.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_on_the_spot_provider.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_video_call_provider.dart';
import 'package:mansoura_company_task/core/providers/assistant/assistant_voice_call_provider.dart';
import 'package:mansoura_company_task/core/providers/doctor/doctor_on_the_spot_provider.dart';
import 'package:mansoura_company_task/core/providers/doctor/doctor_video_call_provider.dart';
import 'package:mansoura_company_task/core/providers/doctor/doctor_voice_call_provider.dart';
import 'package:mansoura_company_task/firstpage.dart';
import 'package:provider/provider.dart';

import 'core/providers/doctor/doctor_clinc_provider.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DoctorClinicController(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorVoiceCallController(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorVideoCallController(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorOnTheSpotController(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantVoiceCallController(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantVideoCallController(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantOnTheSpotController(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantClinicController(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorClincProvider(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorVoiceCallProvider(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorVideoCallProvider(),
        ),
        ChangeNotifierProvider.value(
          value: DoctorOnTheSpotProvider(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantClincProvider(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantVoiceCallProvider(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantVideoCallProvider(),
        ),
        ChangeNotifierProvider.value(
          value: AssistantOnTheSpotProvider(),
        ),
      ],
      child: MaterialApp(
        routes: routes,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ScreenUtilInit(
          designSize: Size(360, 772),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: () => FirstPage(),
        ),
      ),
    );
  }
}
