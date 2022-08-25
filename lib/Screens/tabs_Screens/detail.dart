import 'package:appdesign/app_widgets.dart';
import 'package:appdesign/model/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/custom_icon.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
       CustomWidget().Notifiction(context),
        ],
        centerTitle: true,
        title: Text('Newz'),
        backgroundColor: Color(0xff13182B),
      ),
      body: Stack(
        children: [
          Positioned(
            top:0,
            left:0,
              child:Container(
                height: 211.sp,
                width: 1.sw,
                child: Image.asset('assets/Image 1.png',fit: BoxFit.cover,),
              ),
          ),
          Positioned(
            top:0,
            left:0,
            child:Container(
              height: 211.sp,
             width: 1.sw,
              child: Image.asset('assets/shade.png'),
            ),
          ),
          Positioned(
            top: 140.sp,
            left: 0,
            right: 0,
            child:Container(
              margin: EdgeInsets.only(left: 24.sp,right: 24.sp),
              height: 100,
              width: 100,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 50,
                      width: 50,
                   child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10.sp),
                            height: 20.sp,
                            width: 100.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.white,
                            ),
                            child: Center(child: Text('Neagtive',style: TextStyle(
                              color: Colors.red,
                            ),)),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child:Text('20 July, 2021',style: GoogleFonts.montserrat(
                          color: AppColors.textColor,
                        ),))

                      ],
                    )
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Row(
                        children: [
                          Expanded(child:Icon(Icons.share,color: AppColors.buttonColor,),),
                          Expanded(
                            flex: 2,
                            child:Text(
                            'Share',style: GoogleFonts.montserrat(
                            color: AppColors.buttonColor,
                          ),
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 210.sp,
              left: 0,
              right: 0,
              child: Padding(
                padding:  EdgeInsets.only(left: 20.sp),
                child: Column(
                  children: [
                    Expanded(
                      flex:0,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Bitcoin\'s ‘Upgrade for the Ages\' Taproot is not \nHere',style: GoogleFonts.montserrat(
                          color:AppColors.textColor,
                        ),),
                      ),
                    ),
                   Expanded(
                       flex: 0,
                       child: Container(
                     height: 1.sh,
                     width: 1.sw,
                         child: ListView(
                           children: [
                             Text('The best Bitcoin casinos offer almost instant withdrawals, '
                                 'zero transaction fees, anonymous transfers, as well. The best '
                                 'Bitcoin casinos offer almost instant withdrawals, zero '
                                 'transaction fees, anonymous transfers, as wel',style: GoogleFonts.montserrat(
                               color: Colors.white,
                                 fontSize: 12.sp,
                             ),),
                             SizedBox(
                               height: 20.sp,
                             ),
                             Text('The best Bitcoin casinos offer almost instant withdrawals, '
                                 'zero transaction fees, anonymous transfers, as well. The best '
                                 'Bitcoin casinos offer almost instant withdrawals, zero '
                                 'transaction fees, anonymous transfers, as wel',style: GoogleFonts.montserrat(
                                 color: Colors.white,
                                 fontSize: 12.sp,
                             ),),
                             SizedBox(
                               height: 20.sp,
                             ),
                             Text('The best Bitcoin casinos offer almost instant withdrawals, '
                                 'zero transaction fees, anonymous transfers, as well. The best '
                                 'Bitcoin casinos offer almost instant withdrawals, zero '
                                 'transaction fees, anonymous transfers, as wel',style: GoogleFonts.montserrat(
                                 color: Colors.white,
                                 fontSize: 12.sp,
                             ),),
                             SizedBox(
                               height: 20.sp,
                             ),
                             Text('The best Bitcoin casinos offer almost instant withdrawals, '
                                 'zero transaction fees, anonymous transfers, as well. The best '
                                 'Bitcoin casinos offer almost instant withdrawals, zero '
                                 'transaction fees, anonymous transfers, as wel',style: GoogleFonts.montserrat(
                                 color: Colors.white,
                                 fontSize: 12.sp,
                             ),),
                             SizedBox(
                               height: 20.sp,
                             ),
                             Text('The best Bitcoin casinos offer almost instant withdrawals, '
                                 'zero transaction fees, anonymous transfers, as well. The best '
                                 'Bitcoin casinos offer almost instant withdrawals, zero '
                                 'transaction fees, anonymous transfers, as wel',style: GoogleFonts.montserrat(
                                 color: Colors.white,
                               fontSize: 12.sp
                             ),),
                           ],
                         ),
                       ),
                   ),
                  ],
                ),
              ),)
      ],),
    );
  }
}
