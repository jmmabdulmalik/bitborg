import 'package:appdesign/model/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../cubit_class/bottom_navigatio_cubit.dart';
import '../../model/app_color.dart';
import '../tabs_Screens/all_tab.dart';
import '../tabs_Screens/favorite_coins.dart';
import '../tabs_Screens/natural.dart';
import '../tabs_Screens/papular_evant.dart';
import '../tabs_Screens/positive.dart';

class NewzScreen extends StatelessWidget {
  const  NewzScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: BlocBuilder<NavigationCubit, int>(
                builder: (context, state) {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    padding:
                        EdgeInsets.only(left: 24.sp, right: 24.sp, top: 20.sp),
                    children: [
                      InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 0);
                          controller.jumpToPage(0);
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'All',
                                style: TextStyle(
                                  color:
                                      state == 0 ? Colors.amber : Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: state == 0 ? Colors.amber : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.sp,
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 1);
                          controller.jumpToPage(1);
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Favourite Coins',
                                style: TextStyle(
                                  color:
                                      state == 1 ? Colors.amber : Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: state == 1 ? Colors.amber : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.sp,
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 2);
                          controller.jumpToPage(2);
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Popular Events',
                                style: TextStyle(
                                  color:
                                      state == 2 ? Colors.amber : Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: state == 2 ? Colors.amber : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.sp,
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 3);
                          controller.jumpToPage(3);
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Natural',
                                style: TextStyle(
                                  color:
                                      state == 3 ? Colors.amber : Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: state == 3 ? Colors.amber : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 30.sp,
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<NavigationCubit>()
                              .getnavgationscreen(pageIndex: 4);
                          controller.jumpToPage(4);
                        },
                        child: Column(
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Positive',
                                style: TextStyle(
                                  color:
                                      state == 4 ? Colors.amber : Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 0,
                              child: Icon(Icons.arrow_drop_down,
                                  color:
                                      state == 4 ? Colors.amber : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Expanded(
              flex: 7,
              child: SizedBox(
                height: 250,
                width: 400,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                    AllTabScreen(),
                    FavoriteCoins(),
                    Natural(),
                    PapularEvent(),
                    Positive(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
