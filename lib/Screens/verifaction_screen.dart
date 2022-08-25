import 'package:appdesign/Screens/login_page.dart';
import 'package:appdesign/cubit_class/check_box_cubit.dart';
import 'package:appdesign/cubit_class/verifaction_cubit.dart';
import 'package:appdesign/model/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Account_verifaction extends StatefulWidget {
  const Account_verifaction({Key? key}) : super(key: key);

  @override
  State<Account_verifaction> createState() => _Account_verifactionState();
}

class _Account_verifactionState extends State<Account_verifaction> {

  bool complate = false;
  int value =0;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
          children: [
            SizedBox(
              height: 40.sp,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 23.sp,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Verifaction Code',
                style: GoogleFonts.montserrat(
                    color: AppColors.textColor, fontSize: 24.sp),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            Text(
              'Enter the 4 digit code that we have sent to you\nthrough email mfkhan816@gmail.com',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: AppColors.textColor,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(
              height: 40.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.sp, right: 20.0.sp),
              child: SizedBox(
                height: 60.sp,
                width: 400.sp,
                child: BlocBuilder<VerifactionCubit, int>(
                  builder: (context, state) {
                    return PinCodeTextField(
                        keyboardType: TextInputType.number,
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          activeFillColor: AppColors.textColor,
                          activeColor: Colors.green,
                        ),
                        validator: (value){
                         if(value!.isEmpty||value==null){
                          return '';
                         }else{
                           return null;
                         }
                        },
                        appContext: context,
                        length: 4,
                        onChanged: (value) {

                          });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 18.sp,
            ),
            BlocBuilder<VerifactionCubit, int>(
              builder: (context, state) {
                return Container(
                  margin: EdgeInsets.only(left: 30.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text('00.00', style: TextStyle(
                            color: state==4?AppColors.textColor:AppColors.buttonColor,
                          ),)),
                      SizedBox(
                        width: 60.sp,
                      ),
                      Expanded(
                          flex: 1,
                          child: Text('Resend code', style: TextStyle(
                            color: AppColors.buttonColor,
                          ),))
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 76.sp,
            ),
            InkWell(
              onTap: (){
                if(_formKey.currentState!.validate()){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return LoginPage();
                      }));
                }else {
                  Text('no');
                } },
              child: Container(
                height: 48.sp,
                width: 327.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color:AppColors.buttonColor,
                ),
                child: Center(
                  child: Text(
                    'Continue',
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
      ),
    );
  }
}
