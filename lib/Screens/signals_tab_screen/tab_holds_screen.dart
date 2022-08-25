import 'package:appdesign/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabHoldScreen extends StatelessWidget {
  const TabHoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
      children: [
        const Divider(
          color: Color(0xff151826),
        ),
        SizedBox(
          height: 12.sp,
        ),
        CustomWidget().getSpotDesign('Hold','Low Disk',Colors.green,context),
        SizedBox(
          height: 20.sp,
        ),
        CustomWidget().getSpotDesign('Scalp','High Risk',Colors.red,context),
        SizedBox(
          height: 20.sp,
        ),
        CustomWidget().getSpotDesign('Hold','Low Disk',Colors.green,context),
        SizedBox(
          height: 20.sp,
        ),
        CustomWidget().getSpotDesign('Scalp','High Risk',Colors.red,context ),
        SizedBox(
          height: 20.sp,
        ),

      ],
    );
  }
}