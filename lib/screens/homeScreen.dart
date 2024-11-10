import 'package:flutter/material.dart';
import 'package:waterdelivery/components/Text-style.dart';
import 'package:waterdelivery/components/searchContainer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waterdelivery/constants/assets.dart';
import 'package:waterdelivery/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final TextEditingController searchController = TextEditingController();
    return Scaffold(
        key: _scaffoldKey,

//drawer
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Drawer Header')),
            ],
          ),
        ),
// body 
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
// Appbar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: Icon(Icons.menu)),
                  SearchContainer(searchController: searchController),
                  IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
// Introduction Menu
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textStyle(
                          text: 'Boom Pani',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        height: 10.h,
                      ),
                      textStyle(
                        text:
                            'Truck nija provides a  complete water delivery & transport service for all kind of load and materials',
                        fontSize: 12.sp,
                      ),
                    ],
                  )),
              SizedBox(
                height: 20.h,
              ),
// Location Search
              Center(
                child: SearchContainer(
                  searchController: searchController,
                  hintText: 'Type your location',
                  prefixIcon: Icons.location_on,
                  width: 300.w,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
// Our Services
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: textStyle(
                    text: 'Our Services',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.greyColor),
                      ),
                      height: 200.h,
                      width: 120.w,
                      child: Column(
                        children: [
                          Image.asset(
                            imgAssets.onboardingtruck,
                            height: 150.h,
                          ),
                          textStyle(
                            text: 'Water tank',
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.greyColor),
                      ),
                      height: 200.h,
                      width: 120.w,
                      child: Column(
                        children: [
                          Image.asset(
                            imgAssets.onboardingtruck,
                            height: 150.h,
                          ),
                          textStyle(
                            text: 'Drinking water',
                            fontSize: 15.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: textStyle(
                    text: 'Vendor Nearby',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),
// Vendor  Nearby
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                    child: Container(
                      height: 200.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: AppColors.greyColor),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            imgAssets.onboardingtruck,
                            height: 150.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            children: [
                              // rating Row
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  textStyle(
                                      text: '4.5',
                                      fontSize: 15.sp,
                                      color: AppColors.appColor),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  textStyle(
                                    text: '(5)',
                                    fontSize: 15.sp,
                                  ),
                                  SizedBox(
                                    width: 150.w,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_outline_outlined,
                                        size: 15.sp,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              textStyle(
                                text: 'Truck Required',
                                fontSize: 15.sp,
                              ),
                              textStyle(
                                text: 'Location',
                                fontSize: 12.sp,
                              ),
                              textStyle(
                                text: '15 tonner Steel',
                                fontSize: 12.sp,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
