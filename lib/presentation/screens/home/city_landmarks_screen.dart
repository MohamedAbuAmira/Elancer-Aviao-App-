import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/icons.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/data/models/city.dart';
import 'package:aviao/data/models/trip.dart';
import 'package:aviao/data/trips_data.dart';
import 'package:aviao/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityLandMarkers extends StatelessWidget {
  CityLandMarkers({Key? key, required this.cityName}) : super(key: key);
  final String cityName;

  List<Trip> _availableTrips = tripsData();
  List<Trip> _tripsInCity = tripsData();
  @override
  Widget build(BuildContext context) {
    _tripsInCity =
        _availableTrips.where((trip) => trip.city == cityName).toList();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: LightIcons.customIcon(
                iconName: "Map", iconColor: LightColors.darkColor),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Text(
                  "Destinations in $cityName",
                  style: LightTextStyles.SFH4(
                      textColor: LightColors.deepDarkColor, isLight: false),
                ),
              ),
              SizedBox(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    itemCount: _tripsInCity.length,
                    itemBuilder: (ctx, index) =>
                        CityLandMarkersListTile(cityTrip: _tripsInCity[index])),
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     for (int i = 0; i < _tripsInCity.length; i++)
              //       CityLandMarkersListTile(cityTrip: _tripsInCity[i]),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityLandMarkersListTile extends StatelessWidget {
  const CityLandMarkersListTile({
    Key? key,
    required this.cityTrip,
  }) : super(key: key);

  final Trip cityTrip;

  @override
  Widget build(BuildContext context) {
    print(cityTrip.id);
    print(cityTrip.id.toString());
    return SizedBox(
      width: 315.w,
      height: 80.h,
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            AppRouter.tripDetials,
            arguments: cityTrip.id,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80.w,
              height: 82.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Image.network(
                cityTrip.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(cityTrip.title,
                    style: LightTextStyles.SFH4(
                        textColor: LightColors.darkColor, isLight: false)),
                SizedBox(
                  width: 16.w,
                ),
                Container(
                  width: 219.w,
                  height: 32.h,
                  child: Text(
                    cityTrip.description,
                    style: LightTextStyles.SFBody(
                        textColor: LightColors.greyOneColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
      ),
    );
  }
}
