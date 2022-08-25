import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../cubit_class/check_box_cubit.dart';
import '../../model/app_color.dart';
import '../../model/custom_icon.dart';
import 'detail.dart';

class AllTabScreen extends StatelessWidget {
  const AllTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Diemand(true),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Divider(
              color: AppColors.widgetcolor,
              thickness: 1.5,
            ),
            SizedBox(
              height: 15.sp,
            ),
            Container(
              padding: EdgeInsets.only(left: 35.sp),
              child: Text(
                '100 Newz Feed',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal,
                  color: Color(0xff5F606A),
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            InkWell(
              onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
             return DetailScreen();
           } ));

              },
              child: Container(
                margin: EdgeInsets.only(left: 24.sp, right: 24.sp),
                height: 154.sp,
                width: 327.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.tabCardColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 10.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(right: 5.sp),
                          alignment: Alignment.topCenter,
                          height: 134.sp,
                          width: 306.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Image.asset(
                            'assets/bitcoinpic.png',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 23.sp,
                                      width: 56.sp,
                                      decoration: BoxDecoration(
                                        color: Color(0xff232736),
                                        borderRadius: BorderRadius.circular(10.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Negative',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: SizedBox(
                                      width: 20.sp,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 0,
                                    child: Text(
                                      '20july,2021',
                                      style: GoogleFonts.montserrat(
                                        color: AppColors.Textfieldtextcolor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.sp,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Bitcoin\'s ‘Upgrade for the Ages\' Taproot is Here',
                                style: GoogleFonts.montserrat(
                                  color: AppColors.textColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                'The best Bitcoin casinos offer almost instant'
                                    ' withdrawals, zero transaction fees, anonymous '
                                    'transfers, as well',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12.sp,
                                    color: AppColors.Textfieldtextcolor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return DetailScreen();
            } ));

          },child: Container(
              margin: EdgeInsets.only(left: 24.sp, right: 24.sp),
              height: 154.sp,
              width: 327.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.tabCardColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5.sp),
                        alignment: Alignment.topCenter,
                        height: 134.sp,
                        width: 306.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          'assets/bitcoinpic.png',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 23.sp,
                                    width: 56.sp,
                                    decoration: BoxDecoration(
                                      color: Color(0xff232736),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Positive',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 20.sp,
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    '20july,2021',
                                    style: GoogleFonts.montserrat(
                                      color: AppColors.Textfieldtextcolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7.sp,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Bitcoin\'s ‘Upgrade for the Ages\' Taproot is Here',
                              style: GoogleFonts.montserrat(
                                color: AppColors.textColor,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'The best Bitcoin casinos offer almost instant'
                                  ' withdrawals, zero transaction fees, anonymous '
                                  'transfers, as well',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: AppColors.Textfieldtextcolor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),),
            SizedBox(
              height: 10.sp,
            ),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return DetailScreen();
            } ));

          },child: Container(
              height: 154.sp,
              width: 327.sp,
              margin: EdgeInsets.only(left: 24.sp, right: 24.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.tabCardColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5.sp),
                        alignment: Alignment.topCenter,
                        height: 134.sp,
                        width: 306.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          'assets/bitcoinpic.png',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 23.sp,
                                    width: 56.sp,
                                    decoration: BoxDecoration(
                                      color: Color(0xff232736),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Natural',
                                        style: TextStyle(
                                          color: AppColors.Textfieldtextcolor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 20.sp,
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    '20july,2021',
                                    style: GoogleFonts.montserrat(
                                      color: AppColors.Textfieldtextcolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7.sp,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Bitcoin\'s ‘Upgrade for the Ages\' Taproot is Here',
                              style: GoogleFonts.montserrat(
                                color: AppColors.textColor,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'The best Bitcoin casinos offer almost instant'
                                  ' withdrawals, zero transaction fees, anonymous '
                                  'transfers, as well',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: AppColors.Textfieldtextcolor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),),
            SizedBox(
              height: 10.sp,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return DetailScreen();
                } ));
              },child: Container(
              height: 154.sp,
              width: 327.sp,
              margin: EdgeInsets.only(left: 24.sp, right: 24.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.tabCardColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5.sp),
                        alignment: Alignment.topCenter,
                        height: 134.sp,
                        width: 306.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          'assets/bitcoinpic.png',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 23.sp,
                                    width: 56.sp,
                                    decoration: BoxDecoration(
                                      color: Color(0xff232736),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Natural',
                                        style: TextStyle(
                                          color: AppColors.Textfieldtextcolor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 20.sp,
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    '20july,2021',
                                    style: GoogleFonts.montserrat(
                                      color: AppColors.Textfieldtextcolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7.sp,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Bitcoin\'s ‘Upgrade for the Ages\' Taproot is Here',
                              style: GoogleFonts.montserrat(
                                color: AppColors.textColor,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'The best Bitcoin casinos offer almost instant'
                                  ' withdrawals, zero transaction fees, anonymous '
                                  'transfers, as well',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: AppColors.Textfieldtextcolor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),),
            SizedBox(
              height: 10.sp,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                  return DetailScreen();
                } ));

              },child: Container(
              height: 154.sp,
              width: 327.sp,
              margin: EdgeInsets.only(left: 24.sp, right: 24.sp),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.tabCardColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 10.sp, right: 10.sp, top: 10.sp, bottom: 10.sp),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(right: 5.sp),
                        alignment: Alignment.topCenter,
                        height: 134.sp,
                        width: 306.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Image.asset(
                          'assets/bitcoinpic.png',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 23.sp,
                                    width: 56.sp,
                                    decoration: BoxDecoration(
                                      color: Color(0xff232736),
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Natural',
                                        style: TextStyle(
                                          color: AppColors.Textfieldtextcolor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 20.sp,
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    '20july,2021',
                                    style: GoogleFonts.montserrat(
                                      color: AppColors.Textfieldtextcolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 7.sp,
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Bitcoin\'s ‘Upgrade for the Ages\' Taproot is Here',
                              style: GoogleFonts.montserrat(
                                color: AppColors.textColor,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              'The best Bitcoin casinos offer almost instant'
                                  ' withdrawals, zero transaction fees, anonymous '
                                  'transfers, as well',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: AppColors.Textfieldtextcolor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
