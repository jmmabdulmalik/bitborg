import 'package:appdesign/model/custom_icon.dart';
import 'package:appdesign/model/static_propertys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';
import '../cubit_class/check_box_cubit.dart';
import '../model/app_color.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        // physics: ScrollPhysics.,
        padding: EdgeInsets.only(
          left: 18.sp,
          right: 18.sp,
        ),
        children: [
          SizedBox(
            height: 35.sp,
          ),
          Container(
            height: 38.75.sp,
            width: 153.72.sp,
            alignment: Alignment.topCenter,
            child: Image.asset('assets/splash.png'),
          ),
          SizedBox(
            height: 18.sp,
          ),
          SizedBox(
            height: 32.sp,
            width: 60.sp,
            child: Text(
              'Create Account',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                fontSize: 24.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.textColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0.sp),
            child: Text(
              'Please enter below information for account\n\ncreation',
              style: GoogleFonts.arimo(
                fontSize: 14.sp,
                color: AppColors.textColor,
              ),
            ),
          ),
          SizedBox(
            height: 18.sp,
          ),
          SizedBox(
            height: 19.sp,
            width: 62.sp,
            child: Text(
              'Full Name',
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
                hintText: 'Haroon khan',
                fillColor: AppColors.Textfieldtextcolor,
                hintStyle: GoogleFonts.montserrat(
                  color: AppColors.Textfieldtextcolor,
                ),
                 prefixIcon:Icon(Icons.person,color: AppColors.Textfieldtextcolor,)
              ),
            ),
          ),
          SizedBox(
            height: 18.sp,
          ),
          SizedBox(
            height: 19.sp,
            width: 62.sp,
            child: Text(
              'Email',
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
                hintText: 'Email',
                fillColor: AppColors.Textfieldtextcolor,
                hintStyle: GoogleFonts.montserrat(
                  color: AppColors.Textfieldtextcolor,
                ),
                 prefixIcon:Icon(CustomAppICon.mail ,color: AppColors.Textfieldtextcolor,)
              ),
            ),
            ),
          SizedBox(
            height: 18.sp,
          ),
          SizedBox(
            height: 19.sp,
            width: 62.sp,
            child: Text(
              'Country',
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
            child: Row(children: [
              Expanded(
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Country',
                    fillColor: AppColors.Textfieldtextcolor,
                    hintStyle: GoogleFonts.montserrat(
                      color: AppColors.Textfieldtextcolor,
                    ),
                    prefixIcon:Icon(CustomAppICon.network,color: AppColors.Textfieldtextcolor,)
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 18.sp,
          ),
          SizedBox(
            height: 19.sp,
            width: 62.sp,
            child: Text(
              'Password',
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
                  hintText: '*******',
                  fillColor: AppColors.Textfieldtextcolor,
                  hintStyle: GoogleFonts.montserrat(
                    color: AppColors.Textfieldtextcolor,
                  ),
                  prefixIcon:Icon(Icons.person,color:AppColors.Textfieldtextcolor,)
              ),
            ),
          ),
          SizedBox(
            height: 15.sp,
          ),
          BlocBuilder<CheckBoxCubit1, bool>(
            builder: (context, state) {
              return SizedBox(
                width: 420.sp,
                height: 24.sp,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Transform.scale(
                        scale: 1.2.sp,
                        child: Checkbox(
                          fillColor: MaterialStateProperty.all(Color(0xFFF2AD0B)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          side: BorderSide(
                            color: Color(0xFF707070),
                          ),
                          value: state,
                          onChanged: (value) {
                            context
                                .read<CheckBoxCubit1>()
                                .getcheckBox1(myState: !state);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: FittedBox(
                        child: InkWell(
                          onTap: () {
                            showBottomSheet(
                                backgroundColor: AppColors.widgetcolor,
                                context: context,
                                builder: (context) =>
                                    StaticProperties().TermsAndCondition());
                          },
                          child: Text.rich(
                            TextSpan(
                              text: 'Do you agree to Bitbor\'s',
                              style: GoogleFonts.montserrat(
                                color: Color(0xffBFBFBF),
                                fontSize: 12.sp,
                              ),
                              children: <InlineSpan>[
                                TextSpan(
                                  text: ' Terms and Conditions?',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xffBFBFBF),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 10.sp,
          ),
          BlocBuilder<CheckBoxCubit2, bool>(
            builder: (context, state) {
              return SizedBox(
                width: 420.sp,
                height: 24.sp,
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Transform.scale(
                        scale: 1.2.sp,
                        child: Checkbox(
                          fillColor: MaterialStateProperty.all(Color(0xFFF2AD0B)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                          side: BorderSide(
                            color: Color(0xFF707070),
                          ),
                          value: state,
                          onChanged: (value) {
                            context
                                .read<CheckBoxCubit2>()
                                .getcheckBox2(mystate: !state);
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: FittedBox(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              showBottomSheet(
                                 backgroundColor: AppColors.widgetcolor,
                                  context: context,
                                  builder: (context) =>
                                      StaticProperties().bottomSheet());
                              },
                            child: Text(
                              'Do you Acknowledge the Risk attached to trading?',
                              style: GoogleFonts.montserrat(
                                color: Color(0xffBFBFBF),
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 10.sp,
          ),
          Container(
            height: 48.sp,
            width: 327.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Center(
              child: Text(
                'Create Account',
                style: GoogleFonts.montserrat(
                  color: AppColors.textColor,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Text.rich(
                TextSpan(
                  text: 'Already have an Account ?',
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontSize: 14.sp),
                  children: <InlineSpan>[
                    TextSpan(
                      text: ' Log In',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.buttonColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
