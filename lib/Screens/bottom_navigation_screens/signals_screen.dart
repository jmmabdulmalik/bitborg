import 'package:appdesign/Screens/signals_tab_screen/tab_all_screen.dart';
import 'package:appdesign/Screens/signals_tab_screen/tab_holds_screen.dart';
import 'package:appdesign/Screens/signals_tab_screen/tab_result_screen.dart';
import 'package:appdesign/Screens/signals_tab_screen/tab_scalp_screen.dart';
import 'package:appdesign/Screens/signals_tab_screen/tan_free_screen.dart';
import 'package:appdesign/cubit_class/tabs_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit_class/bottom_navigatio_cubit.dart';


class SignalsScreen extends StatelessWidget {
  const SignalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return BlocProvider(
      create: (context) => TabCubit(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: BlocBuilder<TabCubit, int>(
                builder: (context, state) {
                  return Container(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding:
                      EdgeInsets.only(left: 24.sp, right: 24.sp, top: 20.sp),
                      children: [
                        InkWell(
                          onTap: () {
                            context
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 0);
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
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 1);
                            controller.jumpToPage(1);
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Holds',
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
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 2);
                            controller.jumpToPage(2);
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Scalp',
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
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 3);
                            controller.jumpToPage(3);
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Result F/S',
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
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 4);
                            controller.jumpToPage(4);
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Free',
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
                        SizedBox(
                          width: 30.sp,
                        ),
                        InkWell(
                          onTap: () {
                            context
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 5);
                            controller.jumpToPage(5);
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'Top',
                                  style: TextStyle(
                                    color:
                                    state == 5 ? Colors.amber : Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Icon(Icons.arrow_drop_down,
                                    color:
                                    state == 5 ? Colors.amber : Colors.black),
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
                                .read<TabCubit>()
                                .getTabIndex(pageIndex: 6);
                            controller.jumpToPage(6);
                          },
                          child: Column(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  'More',
                                  style: TextStyle(
                                    color:
                                    state == 6 ? Colors.amber : Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 0,
                                child: Icon(Icons.arrow_drop_down,
                                    color:
                                    state == 6 ? Colors.amber : Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                    TabAllScreen(),
                    TabHoldScreen(),
                    TabResulTScreen(),
                    TabScalpScreen(),
                    TabFreeScreen(),
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
