import 'package:appdesign/model/app_color.dart';
import 'package:appdesign/model/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Container(),
      appBar: AppBar(
        backgroundColor: AppColors.widgetcolor,
        actions: [
          Icon(CustomAppICon.notifaction_1,color: Colors.white,)
        ],
        centerTitle: true,
        title:  Text('Profile',style: GoogleFonts.montserrat(
          color: AppColors.textColor,
          fontSize: 18.sp,
        ),),
      ),
      backgroundColor: Colors.black,
      body:ListView(
        padding: EdgeInsets.only(left: 24.sp,right: 24.sp),
        children: [
          SizedBox(
            height: 35.sp,
          ),
          CircleAvatar(
            radius: 30.sp,
            backgroundColor: AppColors.buttonColor,
            child: Icon(Icons.person,color: Colors.white,size: 40.sp,),
          ),
          SizedBox(
            height: 6.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: Text('Muzamil Afridi',style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: Text('mfkhan816@gmail.com',style: GoogleFonts.montserrat(
              color:AppColors.Textfieldtextcolor,
              fontSize: 12.sp,
            ),),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 40.sp,
              width: 175.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Color(0xff707070),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child:
                    Icon(CustomAppICon.diamond, color: AppColors.buttonColor),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text('Perimum Users',
                        style: GoogleFonts.montserrat(
                          color: AppColors.buttonColor,
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Divider(
            color: AppColors.Textfieldtextcolor,
          ),
          SizedBox(
            height: 20.sp,
          ),
          Text('Full Name',style: GoogleFonts.montserrat(
            fontSize:14.sp,
            color: AppColors.textColor,
          ),),
          SizedBox(
            height: 10.sp,
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
                prefixIcon: Icon(
                  CustomAppICon.lock,
                  color: AppColors.textColor,
                ),
                hintText: 'Muzamil Afridi',
                hintStyle: GoogleFonts.montserrat(
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Text('Country',style: GoogleFonts.montserrat(
            fontSize:14.sp,
            color: AppColors.textColor,
          ),),
          SizedBox(
            height: 10.sp,
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
                prefixIcon: Icon(
                  CustomAppICon.network,
                  color: AppColors.textColor,
                ),
                hintText: 'Country',
                hintStyle: GoogleFonts.montserrat(
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60.sp,
          ),
          Container(
            height: 48.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Center(child: Text('Save Changes',style: GoogleFonts.montserrat(
              color:AppColors.textColor,
              fontSize: 16.sp,
            ),)),
          ),
          SizedBox(
            height: 30.sp,
          ),
          Container(
            height: 48.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              border:Border.all(color:AppColors.buttonColor),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(child: Text('Change Password',style: GoogleFonts.montserrat(
              color:AppColors.buttonColor,
              fontSize: 16.sp,
            ),)),
          ),
        ],
      )
    );
  }
}
