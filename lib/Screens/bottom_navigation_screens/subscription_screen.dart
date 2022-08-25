import 'package:appdesign/model/app_color.dart';
import 'package:appdesign/model/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: AppColors.widgetcolor,
        actions: [
          Icon(CustomAppICon.notifaction_1),
        ],
        title: const Text('Subscription'),
        centerTitle: true,
      ),
      body:ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 24.sp,right: 24.sp),
        children: [
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
              height: 100.sp,
              child: Image.asset('assets/premium.png')),
          SizedBox(height: 15.sp,),
          Align(
            alignment: Alignment.center,
            child: Text('Unlock Premium Features',style: GoogleFonts.montserrat(
              color: AppColors.buttonColor,
            ),),
          ),
          SizedBox(height: 10.sp,),
          Align(
            alignment: Alignment.center,
            child: Text('You can buy any premium subscription and',style: GoogleFonts.montserrat(
              color: AppColors.Textfieldtextcolor,
            ),),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('enjoy Unlimited features of the app.',style: GoogleFonts.montserrat(
              color: AppColors.Textfieldtextcolor,
            ),),
          ),
          SizedBox(height: 20.sp,),
          Container(
              height: 79.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Column(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: Text('Yearly Plan',style: GoogleFonts.montserrat(
              color: Colors.black,
            ),),
                )
              ),
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: Text('\$ 30.00 / Month',style: GoogleFonts.montserrat(
                      color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                )
                )
              ],
            ),
          ),
          SizedBox(height: 20.sp,),
          Container(
            height: 79.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Column(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: Text('6 Months Plan',style: GoogleFonts.montserrat(
                    color: Colors.black,
                  ),),
                )
                ),
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: Text('\$ 30.00 / Month',style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                )
                )
              ],
            ),
          ),
          SizedBox(height: 20.sp,),
          Container(
            height: 79.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Column(
              children: [
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: Text('3 Months Plan',style: GoogleFonts.montserrat(
                    color: Colors.black,
                  ),),
                )
                ),
                Expanded(child: Align(
                  alignment: Alignment.center,
                  child: Text('\$ 30.00 / Month',style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),),
                )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
