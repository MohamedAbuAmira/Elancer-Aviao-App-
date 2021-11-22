import 'package:aviao/data/models/trip.dart';
import 'package:flutter/material.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/presentation/router/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String country;
  final String city;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;
  // final Function removeItem;

  TripItem({
    required this.id,
    required this.title,
    required this.country,
    required this.city,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
    // @required this.removeItem,
  });

  String get seasonText {
    switch (season) {
      case Season.Winter:
        return 'Winter';
      case Season.Spring:
        return 'Spring';
      case Season.Summer:
        return 'Summer';
      case Season.Autumn:
        return 'Autumn';
      default:
        return 'Unknown';
    }
  }

  String get tripTypeText {
    switch (tripType) {
      case TripType.Exploration:
        return 'Exploration';
      case TripType.Recovery:
        return 'Recovery';
      case TripType.Activities:
        return 'Activities';
      case TripType.Therapy:
        return 'Therapy';
      default:
        return 'Unknown';
    }
  }

  void selectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      AppRouter.tripDetials,
      arguments: id,
    )
        .then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      width: 240.w,
      child: InkWell(
        onTap: () => selectTrip(context),
        borderRadius: BorderRadius.circular(16.r),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          elevation: 30,
          shadowColor: LightColors.blueSkyColor,
          margin: EdgeInsets.only(left: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.network(
                      imageUrl,
                      height: 230.h,
                      width: 240.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 230.h,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 20.w,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.8),
                        ],
                        stops: [0.6, 1],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Icon(
                          Icons.calendar_today,
                          color: LightColors.darkColor,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text('$duration Days',
                            style: LightTextStyles.SFBodySmall(
                                textColor: LightColors.greyOneColor)),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.wb_sunny,
                          color: LightColors.darkColor,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(seasonText,
                            style: LightTextStyles.SFBodySmall(
                                textColor: LightColors.greyOneColor)),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.family_restroom,
                          color: LightColors.darkColor,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(tripTypeText,
                            style: LightTextStyles.SFBodySmall(
                                textColor: LightColors.greyOneColor)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.h),
              Padding(
                padding: EdgeInsets.fromLTRB(24.w, 0, 0, 5.h),
                child: Text(title,
                    style: LightTextStyles.SFH3(
                        textColor: LightColors.deepDarkColor, isLight: false)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, color: LightColors.darkColor),
                    Text(
                      ' $city, $country',
                      style: LightTextStyles.SFBodySmall(
                          textColor: LightColors.greyOneColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
