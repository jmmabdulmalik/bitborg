import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/bottom_navigation_screens/subscription_screen.dart';
import '../Screens/profile_screen.dart';
import 'app_color.dart';
import 'custom_icon.dart';

class StaticProperties {
  static  Container drawer(BuildContext context) {
    return Container(
      height: 812.sp,
      width: 287.sp,
      decoration: BoxDecoration(
        color: AppColors.widgetcolor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(38.r),
        ),
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 56.sp),
        children: [
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.only(top: 14.sp, right: 5.sp),
                height: 40.sp,
                child: Image.asset('assets/cross-circle.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ProfileScreen();
                }));
              },
              child: CircleAvatar(
                radius: 30.r,
                backgroundColor: AppColors.buttonColor,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 40.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.sp,
          ),
          Text(
            'Haroon khan',
            style: GoogleFonts.montserrat(
              color: AppColors.textColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.sp,
          ),
          Text(
            'haroonkhan@gmail.com',
            style: GoogleFonts.montserrat(
              color: AppColors.Textfieldtextcolor,
            ),
          ),
          SizedBox(
            height: 16.sp,
          ),
          Container(
            margin: EdgeInsets.only(right: 30.sp),
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
          SizedBox(
            height: 20.sp,
          ),
          Container(
            margin: EdgeInsets.only(right: 40.sp),
            child: Divider(
              color: AppColors.Textfieldtextcolor,
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  CustomAppICon.home2,
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Home',
                  style: GoogleFonts.montserrat(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 23.sp,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  CustomAppICon.headphone,
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Contacts',
                  style: GoogleFonts.montserrat(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 23.sp,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  CustomAppICon.settings,
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Settings',
                  style: GoogleFonts.montserrat(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 23.sp,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  CustomAppICon.logout,
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'Log out',
                  style: GoogleFonts.montserrat(
                    color: AppColors.textColor,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 182.sp,
          ),
          Container(
            margin: EdgeInsets.only(right: 45.sp),
            height: 40.sp,
            width: 172.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.buttonColor,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Icon(
                    CustomAppICon.diamond,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Upgrade Plan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container TermsAndCondition() {
    return Container(
        width: 400.sp,
        height: 700.sp,
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.only(left: 24.0.sp, right: 24.sp),
          child: ListView(
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
                  )),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                'Terms and Condition',
                style: GoogleFonts.montserrat(
                  color: AppColors.textColor,
                  fontSize: 24.sp,
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Description is the pattern of narrative development that '
                  'aims to make vivid a place, object, character, or group. '
                  'Description is one of four rhetorical modes, along with exposition, '
                  'argumentation, and narration. In practice it would be difficult to write '
                  'literature that drew on just one of the four basic modes.',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    color: Color(0xffBFBFBF),
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Container(
                margin: EdgeInsets.only(right: 20.sp),
                child: Text(
                  'Description is the pattern of narrative development that'
                  'aims to make vivid a place, object, character, or group. '
                  'Description is one of four rhetorical modes, along with exposition, '
                  'argumentation, and narration. In practice it would be difficult to write '
                  'literature that drew on just one of the four basic modes.',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    color: Color(0xffBFBFBF),
                  ),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Text(
                'Description is the pattern of narrative development that '
                'aims to make vivid a place, object, character, or group. '
                'Description is one of four rhetorical modes, along with exposition, '
                'argumentation, and narration. In practice it would be difficult to write '
                'literature that drew on just one of the four basic modes.',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  color: Color(0xffBFBFBF),
                ),
              ),
              SizedBox(
                height: 30.sp,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Description is the pattern of narrative development that '
                  'aims to make vivid a place, object, character, or group. '
                  'Description is one of four rhetorical modes, along with exposition, '
                  'argumentation, and narration. In practice it would be difficult to write '
                  'literature that drew on just one of the four basic modes.',
                  style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    color: Color(0xffBFBFBF),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Container bottomSheet() {
    return Container(
      width: 480.sp,
      height: 530.sp,
      decoration: BoxDecoration(
        color: Color(0xff13182B),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.r),
            bottomLeft: Radius.circular(20.r)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 24.0.sp, right: 24.sp),
        child: ListView(
          children: [
            SizedBox(
              height: 20.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    'Risk Warning',
                    style: GoogleFonts.montserrat(
                      fontSize: 20.sp,
                      color: Color(0xffBFBFBF),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: AppColors.widgetcolor,
                        radius: 20.sp,
                        child: Image.asset('assets/cross-circle.png'),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20.sp,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Trading and investing in cryptocurrencies'
                'involve a substantial risk of loss and is not'
                'suitable for every person. The valuation of'
                'cryptocurrencies and related products may'
                'fluctuate and, as a result, clients may lose more'
                'than their original investment. Unless a person'
                'knows and fully understands the risks involved'
                'in cryptocurrencies, they should not engage in'
                'any transactions on the platform provided by'
                'Bitborg.',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  color: Color(0xffBFBFBF),
                ),
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Container(
              margin: EdgeInsets.only(right: 20.sp),
              child: Text(
                "Users should not risk more than they are "
                'prepared to lose. Prior to opening an account'
                'with Bitborg or placing any orders, Users'
                'should carefully consider which Signal/Call is'
                'suitable for them, taking into account its'
                'nature, volatility and legality.'
                'If the User does not understand the risks'
                'related to cryptocurrencies, they should'
                'consult an independent financial advisor. If'
                'after obtaining proper legal and/or financial'
                'advice from a qualified professional, they still'
                'do not understand these risks, then they'
                'should refrain from using the services.',
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  color: Color(0xffBFBFBF),
                ),
              ),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Text(
              'Bitborg is not providing the User with any'
              'investment, legal, regulatory or other form of'
              'advice. The User is required to rely on their own'
              'judgment (with or without the assistance of an'
              'advisor) in using the services of Bitborg. In'
              'asking to provide its services, the User'
              'represents that they are solely responsible for'
              'making their own independent appraisal and'
              'investigation into the risks of the Company’s'
              'services.'
              'There’s always a possibility of sudden and'
              'adverse shifts in trading and other market'
              'activities. Every time you finance a purchase or'
              'sale of virtual currencies on a peer-to-peer'
              'basis you may suffer from not being able to'
              'repay that financing. Every cryptocurrenc',
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                color: Color(0xffBFBFBF),
              ),
            ),
          ],
        ),
      ),
    );
  }

  dialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
              height: 325.sp,
              width: 327.sp,
              color: AppColors.widgetcolor,
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/cross-circle.png',
                        height: 30.sp,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/heart.png',
                    height: 80.sp,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Favrite Coins',
                      style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '3 coins found',
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          color: AppColors.Textfieldtextcolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    height: 30.sp,
                    width: 30.sp,
                    margin: EdgeInsets.only(left: 50.sp, right: 30.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/btc.png',
                            height: 40.sp,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Bitcoin',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    height: 30.sp,
                    width: 30.sp,
                    margin: EdgeInsets.only(left: 50.sp, right: 30.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/eth.png',
                            height: 40.sp,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Ethereum',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    height: 30.sp,
                    width: 30.sp,
                    margin: EdgeInsets.only(left: 50.sp, right: 30.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'assets/bch.png',
                            height: 40.sp,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Bitcoin Cash',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }

  dialog1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
              height: 325.sp,
              width: 327.sp,
              color: AppColors.widgetcolor,
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/cross-circle.png',
                        height: 30.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Image.asset(
                    'assets/dialogicon.png',
                    height: 80.sp,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Add Your Favourite Coins',
                      style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'E.g BTC, Eth, BNB etc',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        color: AppColors.Textfieldtextcolor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 30.sp, right: 30.sp),
                    height: 44.sp,
                    width: 108.sp,
                    color: Colors.grey,
                    child:
                        Center(child: Text('Separate coin with "," (BTC,ETH)')),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: 30.sp, right: 30.sp),
                      height: 44.sp,
                      width: 108.sp,
                      color: AppColors.buttonColor,
                      child: Center(
                        child: Text('Add Coin',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }

  perimiumDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: 325.sp,
            width: 327.sp,
            color: AppColors.widgetcolor,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.sp),
                      child: Image.asset('assets/timer.png')),
                ),
                Expanded(
                    flex: 1,
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Coming Soon',
                          style: GoogleFonts.montserrat(
                            fontSize: 18.sp,
                            color: Colors.white,
                          ),
                        ))),
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'The premium subscription will be launch soon',
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ))),
                Expanded(
                    child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'To get notified Please enter your email below.',
                    style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                )),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5.sp),
                      width: 200.sp,
                      decoration: BoxDecoration(
                        color: AppColors.Textfieldtextcolor,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.only(left: 10.sp,bottom: 10.sp),
                          hintText: 'Email',
                          fillColor: AppColors.widgetcolor,
                          hintStyle: GoogleFonts.montserrat(
                            color: AppColors.textColor,
                          ),
                          //  prefixIcon:CustomAppICon
                        ),
                      ),
                    ),),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 5.sp),
                        width: 200.sp,
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child:InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                              return SubscriptionScreen();
                            }));
                          },
                          child: Center(child: Text('Let me know',style: TextStyle(
                            color: Colors.white,
                          ),)),
                        )
                ),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

 Widget notifation(){
    return Container(
      margin: EdgeInsets.only(left: 5.sp,right: 5.sp),
      height: 88.sp,
      width: 327.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.widgetcolor,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.only(right: 5.sp),
                child: Image.asset('assets/bitcoinpic.png')),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(child:
                  Row(
                    children: [
                      Expanded(child: Text('20 July, 2021',style: GoogleFonts.montserrat(
                        color: AppColors.Textfieldtextcolor,
                      ),)),
                      Expanded(child: Text('07 : 30 am',style: GoogleFonts.montserrat(
                        color: AppColors.Textfieldtextcolor,
                      ),)),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Icon(Icons.circle,size: 15.sp,color: AppColors.buttonColor,)),
                    ],
                  ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text('Bitcoin\'s ‘Upgrade for the Ages\' Taproot is Here',style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),))),
                  Expanded(child: Container(
                      margin: EdgeInsets.only(bottom: 8.sp),
                      alignment: Alignment.bottomLeft,
                      child: Text('Click to read',style: GoogleFonts.montserrat(
                        color: AppColors.buttonColor,
                        fontSize: 12.sp,
                      ),))),

                ],
              )
          )
        ],
      ),
    );
  }
}
