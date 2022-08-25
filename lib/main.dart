import 'package:appdesign/cubit_class/check_box_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/splash.dart';
import 'cubit_class/text_cubit.dart';
import 'cubit_class/verifaction_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
        BlocProvider<TextCubit>(
        create: (context) => TextCubit(0),),
      BlocProvider<CheckBoxCubit1>(
        create: (context) => CheckBoxCubit1(true),),
      BlocProvider<CheckBoxCubit2>(
        create: (context) => CheckBoxCubit2(true),),
      BlocProvider<VerifactionCubit>(
        create: (context) => VerifactionCubit(1),),
    ],
      child: DevicePreview(
        enabled: true,
        builder: (context) =>
            ScreenUtilInit(
              builder: (BuildContext context, Widget? child) =>
                  MaterialApp(
                    debugShowCheckedModeBanner: false,
                    theme: ThemeData(),
                    home: const MyHomePage(),
                  ),
              designSize: const Size (375, 812),
            ),),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}
