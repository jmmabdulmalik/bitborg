import 'package:appdesign/model/custom_icon.dart';
import 'package:appdesign/model/static_propertys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/app_color.dart';


class NotifactionScreen extends StatelessWidget {
  const NotifactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        backgroundColor: AppColors.widgetcolor,
        centerTitle: true,
        title: Text('Notifictions'),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 24.sp,right: 24.sp),
        children: [
          SizedBox(
           height: 20.sp,
          ),
          Text('10 Notifications Found',style: GoogleFonts.montserrat(
            color: AppColors.Textfieldtextcolor,
          ),),
          SizedBox(
            height: 20.sp,
          ),
        StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
          SizedBox(
            height: 15.sp,
          ),
          StaticProperties().notifation(),
        ],
      ),
    );
  }
}
