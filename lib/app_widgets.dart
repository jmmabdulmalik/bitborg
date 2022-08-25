import 'package:appdesign/Screens/bottom_navigation_screens/notifaction_screen.dart';
import 'package:appdesign/model/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Screens/signals_tab_screen/detail_bay_scree.dart';
import 'model/app_color.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
//spot screen design
  Widget getSpotDesign(
      String text1, String text2, Color color1, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return DetailsScreen();
        }));
      },
      child: Container(
        height: 154.sp,
        width: 327.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xff181B29),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      margin: EdgeInsets.only(left: 20.sp),
                                      alignment: Alignment.topRight,
                                      //margin: EdgeInsets.only(left: 20.sp),
                                      child: Image.asset(
                                        'assets/btc.png',
                                        height: 50.sp,
                                      )),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      margin: EdgeInsets.only(right: 20.sp),
                                      alignment: Alignment.topRight,
                                      child: Image.asset(
                                        'assets/t-logo.png',
                                        height: 50.sp,
                                      )),
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        top: 10.sp, left: 10.sp),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'BTC USDT',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.only(left: 10.sp),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Bay/Long',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset('assets/iconstatus.png'),
                        ),
                        Expanded(
                          child: Text(
                            'Stats',
                            style: TextStyle(
                              color: AppColors.Textfieldtextcolor,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Binance',
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 5.sp, top: 5.sp),
                              height: 100.sp,
                              width: 80.sp,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                '$text1',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                ),
                              )),
                            )),
                        Spacer(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Text(
                            'Spot',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // const Spacer(),
                        Expanded(
                            flex: 2,
                            child: Container(
                              margin: EdgeInsets.only(top: 5.sp, bottom: 5.sp),
                              //  height: 10.sp,
                              width: 80.sp,
                              decoration: BoxDecoration(
                                  border: Border.all(color: color1)),
                              child: Center(
                                  child: Text(
                                '$text2',
                                style: GoogleFonts.montserrat(
                                  color: color1,
                                ),
                              )),
                            )),
                        // Spacer(),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(right: 20.sp, top: 5),
                            height: 30.sp,
                            width: 120.sp,
                            color: Color(0xff8DC351),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Image.asset('assets/open-target.png'),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    'Target 4',
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 200,
                  width: 300,
                  child: RichText(
                    text: TextSpan(text: "Current Price", children: [
                      TextSpan(
                        text: '+21.2 %',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: SizedBox(width: 30)),
                      TextSpan(
                        text: '10:20 Pm 23/06/2021',
                        style: TextStyle(
                          color: AppColors.Textfieldtextcolor,
                        ),
                      ),
                    ]),
                  )),
            ),
          ],
        ),
      ),
    );
  }
//spot design screen details
  Widget getSpotDetail() {
    return Container(
        height: 154.sp,
        width: 327.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xff181B29),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 5.sp),
                              alignment: Alignment.bottomRight,
                              child: Image.asset('assets/btc.png')),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Image.asset('assets/t-logo.png')),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'BTC USDT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Buy / Long',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Current Price',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '+21.2 %',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 100.sp,
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment:Alignment.bottomCenter,
                        child: Text(
                          'Binance',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.sp,top: 5.sp),
                          alignment: Alignment.topCenter,
                      width: 70.sp,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          child: Center(
                            child: Text('HOLD',style: TextStyle(
                              color: Colors.white,
                            ),),
                          ),
                    ),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 100.sp,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 15.sp, bottom: 5.sp),
                          child: Image.asset('assets/iconstatus.png')),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin:
                                EdgeInsets.only(right: 10.sp, bottom: 10.sp),
                            child: Text(
                              'staus',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                              ),
                            ),
                          )),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Futures',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(left: 20.sp),
                        width: 70.sp,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                        ),
                        child: Center(
                            child: Text(
                          'LowDisk',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        )),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Buying Zone',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '\$ 1290 - \$ 1329',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

//notifaction
  Widget Notifiction(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
          return NotifactionScreen();
        }));
      },
    child: Icon(CustomAppICon.notifaction_1),
    );
  }
}
