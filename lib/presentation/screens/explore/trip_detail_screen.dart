import 'package:flutter/material.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/data/category_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviao/data/trips_data.dart';

class TripDetailScreen extends StatelessWidget {
  final String tripId;

  TripDetailScreen({required this.tripId});

  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: LightTextStyles.SFH5(
            textColor: LightColors.deepDarkColor, isLight: false),
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.r),
      ),
      height: 200.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedTrip = tripsData().firstWhere((trip) => trip.id == tripId);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: Text(
          selectedTrip.title,
          style: LightTextStyles.SFH2(
              textColor: LightColors.darkColor, isLight: false),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 311.w,
              height: 255.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: LightColors.blueSkyColor,
                    offset: Offset(
                      0.0,
                      6.h,
                    ),
                    blurRadius: 10.r,
                    spreadRadius: 2.r,
                  ),
                  BoxShadow(
                    color: Colors.white.withOpacity(0.0),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 15.h),
            Text(selectedTrip.title,
                style: LightTextStyles.SFH5(
                    textColor: LightColors.darkColor, isLight: false)),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "${selectedTrip.city}, ${selectedTrip.country}",
              style: LightTextStyles.SFBodySmall(
                  textColor: LightColors.deepDarkColor, isLight: false),
            ),
            SizedBox(
              height: 16.h,
            ),
            Text(selectedTrip.description,
                style: LightTextStyles.SFBody(
                    textColor: LightColors.greyOneColor)),
            SizedBox(
              height: 16.h,
            ),
            buildSectionTitle(context, 'Activities'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.activities.length,
                itemBuilder: (ctx, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.h,
                      horizontal: 10.w,
                    ),
                    child: Text(
                      selectedTrip.activities[index],
                      style: LightTextStyles.SFBody(
                          textColor: LightColors.darkColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            buildSectionTitle(context, 'Programs'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.program.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 50.w,
                        height: 50.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: LightColors.blueSkyColor),
                        child: CircleAvatar(
                          child: Text(
                            'Day ${index + 1}',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: LightColors.deepDarkColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      title: Text(selectedTrip.program[index],
                          style: LightTextStyles.SFBody(
                              textColor: LightColors.darkColor)),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
