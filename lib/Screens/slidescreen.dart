import 'package:appdesign/Screens/login_page.dart';
import 'package:appdesign/cubit_class/text_cubit.dart';
import 'package:appdesign/model/app_color.dart';
import 'package:appdesign/model/custom_icon.dart';
import 'package:appdesign/model/static_propertys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';
class SlideScreens extends StatefulWidget {
  const SlideScreens({Key? key}) : super(key: key);

  @override
  State<SlideScreens> createState() => _SlideScreensState();
}

class _SlideScreensState extends State<SlideScreens> {
  var index = 0;
  static int curatindex = 0;

  List Texts = [
    'Get all the latest Signals, News, Hidden\nGems and Airdrops from our Expert Traders!',
    'We keep an eye on the news so you\n don\'t have to. We share all the important\n News with our Subscribers on a daily basis.',
    'Our team gives the best trading signals \nfor Futures and Spot Trading with a record\n96% Accuracy',
  ];

  List slideimage = [
    'assets/slide1.png',
    'assets/slide2.png',
    'assets/slide3.png',
  ];
  List title = ['Unlock all Features'];
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          BlocBuilder<TextCubit, int>(
            builder: (context, state) {
              return Positioned(
                  top: 30.sp,
                  left: 0.sp,
                  right: 0.sp,
                  child: Padding(
                    padding:
                    EdgeInsets.only(top: 50.sp, right: 20.sp, left: 20.sp),
                    child: SizedBox(
                      height: 269.05.sp,
                      width: 279.77.sp,
                      child: PageView.builder(
                        itemCount: 3,
                        controller: controller,
                        onPageChanged: (pageNumber) {
                          context.read<TextCubit>().getIndex(index: pageNumber);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset('${slideimage[index]}');
                        },
                      ),
                    ),
                  ));
            },
          ),
          Positioned(
              top: 380.sp,
              left: 0.sp,
              child: Container(
                width: 1.sw,
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotHeight: 12.sp,
                    dotWidth: 10.sp,
                    activeDotColor: Color(0xffF2AD0B),
                  ),
                  controller: controller,
                ),
              )),
          BlocBuilder<TextCubit, int>(
            builder: (context, state) {
              return Positioned(
                  top: 410.sp,
                  right: 0.sp,
                  left: 0,
                  bottom: 0,
                  child: Container(
                      height: 371.sp,
                      width: 375.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Color(0xff13182B),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(top: 15.0.sp),
                              alignment: Alignment.topCenter,
                              child: Text(
                                state == 0
                                    ? 'Unlock all Features'
                                    : state == 1
                                    ? 'All Important News'
                                    : 'Trading Signals',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 24.sp),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  state == 0
                                      ? '${Texts[0]}'
                                      : state == 1
                                      ? '${Texts[1]}'
                                      : '${Texts[2]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 22.sp,
                                right: 22.sp,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 15,
                                      child: InkWell(
                                        onTap: () {
                                         state==1?controller.jumpToPage(0):state==2?controller.jumpToPage(1):Container();
                                        },
                                        child:  Text(
                                          state==2?'Back':state==1?'Back':'',
                                          style: TextStyle(
                                            color: Color(0xffF2AD0B),
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: 198.33.sp,
                                        width: 198.33.sp,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.buttonColor
                                        ),
                                        child: InkWell(
                                          onTap: (){
                                            state==0?controller.jumpToPage(1):state==1?controller.jumpToPage(2):
                                            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                              return LoginPage();
                                            }));
                                          },
                                          child: Icon(
                                          CustomAppICon.arrowright,
                                            size: 20.sp,
                                            color: AppColors.textColor,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      )));
            },
          ),
          BlocBuilder<TextCubit, int>(
            builder: (context, state) {
              return Positioned(
                top: 50,
                right: 20,
                child:InkWell(
                  onTap: () {
                    controller.jumpToPage(2);
                  },
                  child: Text(
                    state==0?'Skip':state==1?'Skip':'',
                    style: TextStyle(
                        color: AppColors.buttonColor, fontSize: 16.sp),
                  ),
                ));
            },
          )
        ],
      ),
    );
  }
}
