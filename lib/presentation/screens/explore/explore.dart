import 'package:aviao/core/constants/icons.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/presentation/screens/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:aviao/core/constants/colors.dart';

import 'package:aviao/data/category_data.dart';
import 'package:aviao/data/models/trip.dart';
import 'package:aviao/data/trips_data.dart';
import 'package:aviao/presentation/screens/explore/widgets/category_item.dart';
import 'package:aviao/presentation/screens/explore/widgets/trip_item_explore_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int tabSelected = 0;
  List<Trip> _availableTrips = tripsData();
  List<Trip> _filteredTrips = tripsData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: LightTextStyles.SFH2(
                    textColor: LightColors.darkColor, isLight: false),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "We help to inspire your next jurney, simply just choose what type of vacation you want.",
                style:
                    LightTextStyles.SFBody(textColor: LightColors.greyOneColor),
              ),
              // SizedBox(
              // height: 24.h,
              // ),
              // SearchField(),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 72.w,
                    height: 72.h,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          tabSelected = 0;
                        });
                      },
                      borderRadius: BorderRadius.circular(16.r),
                      child: Container(
                          decoration: BoxDecoration(
                            color:
                                tabSelected == 0 ? LightColors.darkColor : null,
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: const Icon(Icons.category_outlined,
                              size: 48, color: LightColors.greyTwoColor)),
                    ),
                  ),
                  SizedBox(
                    width: 72.w,
                    height: 72.h,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          tabSelected = 1;

                          _filteredTrips = _availableTrips
                              .where((trip) => trip.isInWinter == true)
                              .toList();
                        });
                      },
                      borderRadius: BorderRadius.circular(16.r),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              tabSelected == 1 ? LightColors.darkColor : null,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: LightIcons.customIcon(
                            iconName: "Snow",
                            iconSize: 48,
                            iconColor: LightColors.greyTwoColor),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  SizedBox(
                    width: 72.w,
                    height: 72.h,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          tabSelected = 2;
                          _filteredTrips = _availableTrips
                              .where((trip) => trip.isInSummer == true)
                              .toList();
                        });
                      },
                      borderRadius: BorderRadius.circular(16.r),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              tabSelected == 2 ? LightColors.darkColor : null,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: LightIcons.customIcon(
                            iconName: "Sun",
                            iconSize: 48,
                            iconColor: LightColors.greyTwoColor),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w),
                  SizedBox(
                    width: 72.w,
                    height: 72.h,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          tabSelected = 3;
                          _filteredTrips = _availableTrips
                              .where((trip) => trip.isForFamilies == true)
                              .toList();
                        });
                      },
                      borderRadius: BorderRadius.circular(16.r),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              tabSelected == 3 ? LightColors.darkColor : null,
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: const Icon(Icons.family_restroom_outlined,
                            size: 48, color: LightColors.greyTwoColor),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              tabSelected == 0
                  ? SizedBox(height: 440.h, child: CategoriesCards())
                  : SizedBox(
                      height: 440.h,
                      child: TripsItemsCard(
                        displayTrips: _filteredTrips,
                      ))
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1, crossAxisSpacing: 10.w, mainAxisSpacing: 10.h),
      children: CategoriesData.map(
        (categoryData) => CategoryItem(
          categoryData.id,
          categoryData.title,
          categoryData.imageUrl,
        ),
      ).toList(),
    );
  }
}

class TripsItemsCard extends StatelessWidget {
  final List<Trip> displayTrips;
  const TripsItemsCard({
    Key? key,
    required this.displayTrips,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 8.h),
      scrollDirection: Axis.vertical,
      itemBuilder: (ctx, index) {
        return DisplayTripsItem(
          id: displayTrips[index].id,
          title: displayTrips[index].title,
          imageUrl: displayTrips[index].imageUrl,
        );
      },
      itemCount: displayTrips.length,
    );
  }
}
