import 'package:appdesign/Screens/verifaction_screen.dart';
import 'package:appdesign/Screens/signup_screen.dart';
import 'package:appdesign/cubit_class/text_cubit.dart';
import 'package:appdesign/model/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/custom_icon.dart';
import 'bottom_navigation_screens/bottom_navigation_screen.dart';
import 'forgat_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        // physics: ScrollPhysics.,
        padding: EdgeInsets.only(
          left: 24.sp,
          right: 24.sp,
        ),
        children: [
          SizedBox(
            height: 40.sp,
          ),
          Container(
            height: 38.75.sp,
            width: 153.72.sp,
            alignment: Alignment.topCenter,
            child: Image.asset('assets/splash.png'),
          ),
          SizedBox(
            height: 43.sp,
          ),
          SizedBox(
            height: 32.sp,
            width: 60.sp,
            child: Text(
              'Login',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.0.sp, top: 20.0.sp),
            child: Text(
              'Please enter email & password to login',
              style: GoogleFonts.arimo(
                fontSize: 14.sp,
                color: AppColors.textColor,
              ),
            ),
          ),
          SizedBox(
            height: 32.sp,
          ),
          SizedBox(
              height: 69.sp,
              width: 327.sp,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Email',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
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
                            hintText: 'Email',
                            fillColor: AppColors.Textfieldtextcolor,
                            hintStyle: GoogleFonts.montserrat(
                              color: AppColors.Textfieldtextcolor,
                            ),
                              prefixIcon:Icon(CustomAppICon.mail,color: AppColors.Textfieldtextcolor,)
                          ),
                        ),
                      ),
                    ),
                  ])),
          SizedBox(
            height: 23.sp,
          ),
          SizedBox(
            height: 69.sp,
            width: 327.sp,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Password',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
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
                        hintText: '*********',
                        fillColor: AppColors.Textfieldtextcolor,
                        hintStyle: GoogleFonts.montserrat(
                          color: AppColors.Textfieldtextcolor,
                        ),
                          prefixIcon:Icon(CustomAppICon.lock,color:AppColors.Textfieldtextcolor,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return ForgatPassword();
                }));
              },
              child: Text(
                'Forgat Password',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal,
                    color: AppColors.buttonColor, fontSize: 14.sp),
              ),
            ),
          ),
          SizedBox(
            height: 34.sp,
          ),
          Container(
            height: 44.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return BottomNavigtionScreen();
                }));
              },
              child: Center(
                child: Text('Login',style: GoogleFonts.montserrat(
                  fontSize: 16.sp,
                  color:AppColors.textColor
                ),),
              ),
            ),
          ),
          SizedBox(
            height: 100.sp,
            width: 339.sp,
          ),
        Row(
          children: [
            Expanded(
                flex: 0,
                child:Text('Dont have an account? ',style: GoogleFonts.montserrat(
                  color: AppColors.textColor,
                  fontSize: 14.sp,
                ),),

            ),
            Expanded(flex: 1,
              child:InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return SignupScreen();
                  }));
                },
                child: Text('Create Account',style: GoogleFonts.montserrat(
                  color: AppColors.buttonColor,
                  fontSize: 14.sp,
                ),),
              ),)
          ],
        )
        ],
      ),
    );
  }
}
