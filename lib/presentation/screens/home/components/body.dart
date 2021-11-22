import 'package:flutter/material.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/icons.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/data/models/city.dart';
import 'package:aviao/data/cities_data.dart';
import 'package:aviao/data/models/trip.dart';
import 'package:aviao/data/trips_data.dart';
import 'package:aviao/presentation/router/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  String dropCityName = 'All';
  Map<String, String> cityCountry = {};
  List<String> getCitiesNames() {
    for (City city in citiesData) {
      cityCountry[city.cityName] = city.countryName;
    }
    // to make dropMenu work with value of "All"
    cityCountry['All'] = "World";
    return cityCountry.keys.toList();
  }

  @override
  Widget build(BuildContext context) {
    List<String> cities = getCitiesNames();
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(alignment: Alignment.bottomCenter, children: [
              Container(
                width: double.infinity,
                height: 416.h,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    // color: LightColors.blueSkyColor,
                    gradient: const RadialGradient(
                      center: Alignment(0.6, -0.6), // near the top right
                      radius: 0.5,
                      colors: <Color>[
                        Color(0xFFD7EDF3),
                        LightColors.blueSkyColor,
                      ],
                      stops: <double>[0.3, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: LightColors.greyOneColor,
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
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r))),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(32.w, 72.h, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Chicago",
                            style: LightTextStyles.SFBody(
                                textColor: LightColors.whiteColor,
                                isLight: false),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: LightIcons.customIcon(iconName: "Edit"),
                          ),
                        ],
                      ),
                      LightIcons.customIcon(iconName: "DottedLinewithPlane"),
                      SizedBox(
                        width: 160.w,
                        child: Text(
                          'Where do you want to travel?',
                          textAlign: TextAlign.left,
                          style: LightTextStyles.SFH4(
                              textColor:
                                  LightColors.whiteColor.withOpacity(0.7),
                              isLight: false),
                        ),
                      ),
                      Row(
                        children: [
                          DropdownButton<String>(
                            value: dropCityName,
                            elevation: 13,
                            borderRadius: BorderRadius.circular(16.r),
                            style: LightTextStyles.SFH2(
                                textColor: LightColors.whiteColor,
                                isLight: false),
                            dropdownColor: LightColors.blueSkyLightColor,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropCityName = newValue!;
                              });
                            },
                            items: cities
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          SizedBox(
                            width: 46.w,
                          ),
                        ],
                      ),
                      Text(
                        '${cityCountry[dropCityName]}',
                        style: LightTextStyles.SFH4(
                            textColor: LightColors.whiteColor.withOpacity(0.7),
                            isLight: false),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 311.w,
                height: 12.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Colors.white.withOpacity(0.4)),
              ),
            ]),
            SizedBox(height: 26.h),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: Text(
                'Popular Destinations',
                style: LightTextStyles.SFBody(
                    textColor: LightColors.darkColor, isLight: false),
              ),
            ),
            SizedBox(height: 16.h),
            dropCityName != 'All'
                ? Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: TripsInCityCardsListView(
                      city: dropCityName,
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: CitiesCardsListView(
                      city: citiesData,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class TripsInCityCardsListView extends StatelessWidget {
  final String city;
  TripsInCityCardsListView({Key? key, required this.city}) : super(key: key);

  List<Trip> _availableTrips = tripsData();
  List<Trip> _tripsInCity = tripsData();

  @override
  Widget build(BuildContext context) {
    _tripsInCity = _availableTrips.where((trip) => trip.city == city).toList();

    return SizedBox(
      width: double.infinity,
      height: 229.h,
      child: ListView.builder(
          // Should set a szie of parent widget
          scrollDirection: Axis.horizontal,

          // shrinkWrap: true,
          itemCount: _tripsInCity.length,
          itemBuilder: (BuildContext context, int index) {
            return TripsCityCard(
              cityTrips: _tripsInCity[index],
            );
          }),
    );
  }
}

class TripsCityCard extends StatelessWidget {
  const TripsCityCard({
    Key? key,
    required this.cityTrips,
  }) : super(key: key);
  final Trip cityTrips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: SizedBox(
          height: 229.h,
          width: 200.w,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRouter.tripDetials,
                arguments: cityTrips.id,
              );
            },
            child: Card(
              elevation: 30,
              shadowColor: LightColors.blueSkyColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.r),
                child: Stack(
                  children: [
                    Image.network(
                      cityTrips.imageUrl,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Center(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        child: Text(
                          cityTrips.title,
                          style: LightTextStyles.SFH5(
                              textColor: LightColors.whiteColor,
                              isLight: false),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class CitiesCardsListView extends StatelessWidget {
  final List<City> city;
  const CitiesCardsListView({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 229.h,
      child: ListView.builder(
          // Should set a szie of parent widget
          scrollDirection: Axis.horizontal,

          // shrinkWrap: true,
          itemCount: city.length,
          itemBuilder: (BuildContext context, int index) {
            return CityCard(
              city: city[index],
            );
          }),
    );
  }
}

class CityCard extends StatelessWidget {
  final City city;
  const CityCard({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: SizedBox(
          height: 229.h,
          width: 200.w,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRouter.cityLandmarks,
                arguments: city.cityName,
              );
            },
            child: Card(
              elevation: 30,
              shadowColor: LightColors.blueSkyColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.r),
                child: Stack(
                  children: [
                    Image.network(
                      city.imageUrl,
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Center(
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        child: Text(
                          city.cityName,
                          style: LightTextStyles.SFH5(
                              textColor: LightColors.whiteColor,
                              isLight: false),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
