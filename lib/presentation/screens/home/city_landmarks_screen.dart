import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/icons.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/data/models/city.dart';
import 'package:aviao/data/models/trip.dart';
import 'package:aviao/data/trips_data.dart';
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
          LightIcons.customIcon(iconName: "Map"),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Text(
                  cityName,
                  style: LightTextStyles.SFH1(
                      textColor: LightColors.deepDarkColor, isLight: false),
                ),
              ),
              CityLandMarkersListTile(
                cityTrips: _tripsInCity,
              ),
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
    required this.cityTrips,
  }) : super(key: key);

  final List<Trip> cityTrips;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cityTrips.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Image.network(cityTrips[index].imageUrl),
            ),
            title: Text(cityTrips[index].title,
                style: LightTextStyles.SFH4(
                    textColor: LightColors.darkColor, isLight: false)),
            subtitle: Text(
              cityTrips[index].description,
              style:
                  LightTextStyles.SFBody(textColor: LightColors.greyOneColor),
              maxLines: 2,
            ),
            isThreeLine: true,
          ),
        );
      },
    );
  }
}
