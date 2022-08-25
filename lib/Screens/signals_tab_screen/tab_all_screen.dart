import 'package:appdesign/app_widgets.dart';
import 'package:appdesign/model/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TabAllScreen extends StatelessWidget {
  const TabAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.only(left: 24.sp, right: 24.sp),
        children: [
          const Divider(
            color: Color(0xff151826),
          ),
          Container(
            color: const Color(0xff17181D),
            height: 56.sp,
            width: 327.sp,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/bch.png',
                      height: 20,
                    )),
                Expanded(
                    flex: 7,
                    child: Text(
                      'Hold BCH USDT for Long term to enjoy heavy gains!',
                      style: GoogleFonts.montserrat(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    )),
                const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.cancel,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 12.sp,
          ),
          CustomWidget().getSpotDesign('Hold','Low Disk',Colors.green,context),
          SizedBox(
            height: 20.sp,
          ),
          CustomWidget().getSpotDesign('Scalp','High Risk',Colors.red,context),
          SizedBox(
            height: 20.sp,
          ),
          CustomWidget().getSpotDesign('Hold','Low Disk',Colors.green,context),
          SizedBox(
            height: 20.sp,
          ),
          CustomWidget().getSpotDesign('Scalp','High Risk',Colors.red,context),
          SizedBox(
            height: 20.sp,
          ),
        ],
      ),
    );
  }
}
