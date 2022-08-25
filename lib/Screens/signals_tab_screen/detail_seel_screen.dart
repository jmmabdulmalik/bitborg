import 'package:appdesign/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/app_color.dart';
import '../../model/custom_icon.dart';

class DetailBayScreen extends StatelessWidget {
  const DetailBayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          actions: [
            CustomWidget().Notifiction(context),
          ],
          backgroundColor: AppColors.widgetcolor,
          centerTitle:true,
          title:  Text('BTCUSDT',style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20.sp,right: 20.sp),
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 1,
                    child: Text('Signal # 1001',style: GoogleFonts.montserrat(
                      color: Colors.white,
                    ),)),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text('10:20 Pm 23/06/2021',style: GoogleFonts.montserrat(
                      color: Colors.white,
                    ),),
                  ),),

              ],
            ),
            SizedBox(
              height: 10.sp,
            ),
            CustomWidget().getSpotDetail(),

            SizedBox(
              height: 20.sp,
            ),
            Container(
              height: 76.sp,
              width: 327.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Color(0xff1D2032)),
              ),
              child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child:Container(
                        margin: EdgeInsets.only(left: 10.sp),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child:Align(
                                  alignment:Alignment.centerLeft,
                                  child: Image.asset('assets/open-target.png')),),
                            Expanded(
                              flex: 4,
                              child:Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Target 1',style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),),
                              ),),
                          ],
                        ),
                      ),),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('Leverage   12',style: GoogleFonts.montserrat(
                            color: Color(0xffB5C248),
                            fontSize: 14.sp,
                          ),),
                        ),
                      )
                    ],
                  ),
                  ),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(
                        margin:EdgeInsets.only(right: 12.sp),
                        child: Align(
                          alignment:Alignment.centerRight,
                          child: Text('\$ 1200',style: GoogleFonts.montserrat(
                            color: Color(0xff00D563),
                            fontSize: 16.sp,
                          ),),
                        ),
                      )),
                      Expanded(child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Stop Loss 1.93',style: GoogleFonts.montserrat(
                          color: Color(0xffFF4D52),
                          fontSize: 16.sp,
                        ),),
                      ))
                    ],
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Container(
              height: 76.sp,
              width: 327.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Color(0xff1D2032)),
              ),
              child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child:Container(
                        margin: EdgeInsets.only(left: 10.sp),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child:Align(
                                  alignment:Alignment.centerLeft,
                                  child: Image.asset('assets/open-target.png')),),
                            Expanded(
                              flex: 4,
                              child:Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Target 1',style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                ),),
                              ),),
                          ],
                        ),
                      ),),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('Leverage   12',style: GoogleFonts.montserrat(
                            color: Color(0xffB5C248),
                            fontSize: 14.sp,
                          ),),
                        ),
                      )
                    ],
                  ),
                  ),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(
                        margin:EdgeInsets.only(right: 12.sp),
                        child: Align(
                          alignment:Alignment.centerRight,
                          child: Text('\$ 1200',style: GoogleFonts.montserrat(
                            color: Color(0xff00D563),
                            fontSize: 16.sp,
                          ),),
                        ),
                      )),
                      Expanded(child: Align(
                        alignment: Alignment.topCenter,
                        child: Text('Stop Loss 1.93',style: GoogleFonts.montserrat(
                          color: Color(0xffFF4D52),
                          fontSize: 16.sp,
                        ),),
                      ))
                    ],
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.sp,
            ),
            Container(
              height: 48.sp,
              width: 327.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color:Colors.red,
              ),
              child: Center(
                child: Text('Sell',style: GoogleFonts.montserrat(
                  color: Colors.white,
                ),),
              ),
            ),
          ],
        )
    );
  }
}
