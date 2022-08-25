import 'dart:ui';

import 'package:appdesign/Screens/bottom_navigation_screens/gems_screen.dart';
import 'package:appdesign/Screens/bottom_navigation_screens/newz_Screen.dart';
import 'package:appdesign/Screens/bottom_navigation_screens/signals_screen.dart';
import 'package:appdesign/Screens/bottom_navigation_screens/subscription_screen.dart';
import 'package:appdesign/app_widgets.dart';
import 'package:appdesign/model/app_color.dart';
import 'package:appdesign/model/custom_icon.dart';
import 'package:appdesign/model/static_propertys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cubit_class/bottom_navigatio_cubit.dart';
import '../../cubit_class/check_box_cubit.dart';
import 'home_screen.dart';

class BottomNavigtionScreen extends StatelessWidget {
  const BottomNavigtionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTitle = [
      'Home',
      'Newz',
      'Signals',
      'Gems',
    ];

    PageController controller = PageController();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => NavigationCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => Diemand(false),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(
            width: 287.sp,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 5.0,
              ),
              child: StaticProperties.drawer(context),
            ),
          ),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.widgetcolor,
            title: BlocBuilder<NavigationCubit, int>(
              builder: (context, state) {
                return Text('${appTitle[state]}');
              },
            ),
            actions: [
           CustomWidget().Notifiction(context),
            ],
          ),
          extendBody: true,
          body: Stack(
            children: [
              PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: const [
                  HomeScreen(),
                  NewzScreen(),
                  SignalsScreen(),
                GemsScreen(),
                ],
              ),
              BlocBuilder<Diemand, bool>(
                builder: (context, state) {
                  return Positioned(
                    bottom: 101.sp,
                    child: Container(
                      color: Colors.transparent,
                      width: 153.sp,
                      height: 44.sp,
                      child: Stack(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              context
                                  .read<Diemand>()
                                  .getdimand(mystate: !state);
                            },
                            child: Container(
                                alignment: const Alignment(0.03, 0.08),
                                width: state == false ? 49.sp : 140.sp,
                                height: 44.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.sp),
                                  color: AppColors.buttonColor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      blurRadius: 20.0,
                                    ),
                                  ],
                                ),
                                child: state == false
                                    ? const Icon(
                                        CustomAppICon.diamond,
                                        color: Colors.white,
                                      )
                                    : InkWell(
                                        onTap: () {
                                          // showDialog(
                                          //     context: context,
                                          //     builder: (ctx) {
                                          //       return addPremium(
                                          //           context: context);
                                        },
                                        child: Row(
                                          children: [
                                            const Expanded(
                                              child: Icon(
                                                CustomAppICon.diamond,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: InkWell(
                                                onTap: (){
                                                  StaticProperties().perimiumDialog(context);
                                                },
                                                child: Text(
                                                  'Premium',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 16.sp,
                                                    color: AppColors.textColor,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                          ),
                          Positioned(
                            right: 4,
                            top: 10,
                            child: Visibility(
                              visible: state == true ? true : false,
                              child: InkWell(
                                onTap: () {
                                  context
                                      .read<Diemand>()
                                      .getdimand(mystate: !state);
                                },
                                child: Container(
                                  width: 20.sp,
                                  height: 20.sp,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.textColor),
                                  child: Image.asset('assets/cross-circle.png'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
          bottomNavigationBar: BlocBuilder<NavigationCubit, int>(
            builder: (context, state) {
              return Container(
                height: 80.sp,
                width: 375.sp,
                decoration: BoxDecoration(
                  color: AppColors.widgetcolor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.r),
                      topLeft: Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 0);
                          controller.jumpToPage(0);
                        },
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  CustomAppICon.home1,
                                  color: AppColors.BottomitemColor,
                                  size: 35.sp,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Home',
                                style: GoogleFonts.montserrat(
                                  color: AppColors.BottomitemColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 1);
                          controller.jumpToPage(1);
                        },
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  CustomAppICon.newz,
                                  color: AppColors.BottomitemColor,
                                  size: 35.sp,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'News',
                                style: GoogleFonts.montserrat(
                                  color: AppColors.BottomitemColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 2);
                          controller.jumpToPage(2);
                        },
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  CustomAppICon.signals,
                                  color: AppColors.BottomitemColor,
                                  size: 35.sp,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Signals',
                                style: GoogleFonts.montserrat(
                                  color: AppColors.BottomitemColor,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 3);
                          controller.jumpToPage(3);
                        },
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  CustomAppICon.gems,
                                  color: AppColors.BottomitemColor,
                                  size: 35.sp,
                                )),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Gems',
                                style: GoogleFonts.montserrat(
                                    color: AppColors.BottomitemColor,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
