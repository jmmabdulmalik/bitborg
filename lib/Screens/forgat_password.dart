import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/app_color.dart';
import '../model/custom_icon.dart';
import 'verifaction_screen.dart';


class ForgatPassword extends StatelessWidget {
  const ForgatPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.only(left: 24.sp,right: 24.sp),
        children: [
             SizedBox(
               height: 40.sp,
             ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
          ),
          SizedBox(
            height: 30.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: Text('Reset Password',style:GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24.sp,
            ),),
          ),
       SizedBox(
         height: 15.sp,
       ),
       Text('Below field are required to fill for the\npassword reset',textAlign: TextAlign.center,style:GoogleFonts.montserrat(
              color: Color(0xffBFBFBF),
              fontSize: 14.sp,
            ),),
          SizedBox(
            height: 20.sp,
          ),
          SizedBox(
            height: 19.sp,
            width: 62.sp,
            child: Text(
              'New Password',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Container(
            height: 44.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0.r),
              color: Colors.grey.shade900,
            ),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Password',
                  fillColor: AppColors.Textfieldtextcolor,
                  hintStyle: GoogleFonts.montserrat(
                    color: AppColors.Textfieldtextcolor,
                  ),
                  prefixIcon:Icon(CustomAppICon.lock,color: AppColors.Textfieldtextcolor,)
              ),
            ),
          ),
          SizedBox(
            height: 25.sp,
          ),
          SizedBox(
            height: 19.sp,
            width: 62.sp,
            child: Text(
              'Confirm Password',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Container(
            height: 44.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0.r),
              color: Colors.grey.shade900,
            ),
            child: TextFormField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Confirm Password',
                  fillColor: AppColors.Textfieldtextcolor,
                  hintStyle: GoogleFonts.montserrat(
                    color: AppColors.Textfieldtextcolor,
                  ),
                  prefixIcon:Icon(Icons.person,color: AppColors.Textfieldtextcolor,)
              ),
            ),
          ),
          SizedBox(
            height: 40.sp,
          ),
          Container(
            height: 48.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Center(
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return Account_verifaction();
                  }));
                },
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.montserrat(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
