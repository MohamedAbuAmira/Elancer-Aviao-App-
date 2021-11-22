import 'package:aviao/data/models/trip.dart';
import 'package:aviao/data/trips_data.dart';
import 'package:flutter/material.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/trip_item.dart';

class CategoryTripsScreen extends StatefulWidget {
  final String title;
  final String id;

  CategoryTripsScreen({Key? key, required this.title, required this.id})
      : super(key: key);

  // CategoryTripsScreen(this.availableTrips);

  @override
  _CategoryTripsScreenState createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  late List<Trip> displayTrips;

  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // final routeArgument =
    //     ModalRoute.of(context)!.settings.arguments as CategoryItemArguments;
    // final categoryId = routeArgument.id;
    // categoryTitle = routeArgument.id;
    // displayTrips = widget.availableTrips.where((trip) {
    //   return trip.categories.contains(categoryId);
    // }).toList();
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }

  @override
  Widget build(BuildContext context) {
    displayTrips = tripsData().where((trip) {
      return trip.categories.contains(widget.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 1.h, 20.w, 0),
              child: Text(
                "Hey! check trips, vacations in ${widget.title} category",
                style: LightTextStyles.SFH4(
                    textColor: LightColors.darkColor, isLight: false),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.w, 0, 0, 0),
              child: Text(
                "View trip details",
                style:
                    LightTextStyles.SFBody(textColor: LightColors.greyOneColor),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TripItemCard(displayTrips: displayTrips),
          ],
        ),
      ),
    );
  }
}

class TripItemCard extends StatelessWidget {
  const TripItemCard({
    Key? key,
    required this.displayTrips,
  }) : super(key: key);

  final List<Trip> displayTrips;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: ListView.builder(
        padding: EdgeInsets.only(bottom: 8.h, right: 15.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return TripItem(
            id: displayTrips[index].id,
            country: displayTrips[index].country,
            city: displayTrips[index].city,
            title: displayTrips[index].title,
            imageUrl: displayTrips[index].imageUrl,
            duration: displayTrips[index].duration,
            tripType: displayTrips[index].tripType,
            season: displayTrips[index].season,
            // removeItem: _removeTrip,
          );
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}
