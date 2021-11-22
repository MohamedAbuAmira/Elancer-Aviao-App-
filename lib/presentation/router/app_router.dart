// ignore_for_file: no_duplicate_case_values

import 'package:aviao/presentation/screens/explore/category_trips_screen.dart';
import 'package:aviao/presentation/screens/explore/trip_detail_screen.dart';
import 'package:aviao/presentation/screens/home/about_screen.dart';
import 'package:aviao/presentation/screens/home/city_landmarks_screen.dart';
import 'package:aviao/presentation/screens/luanch_screen.dart';
import 'package:aviao/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';

import '../screens/home/home_screen.dart';

class CategoryItemArguments {
  final String title;
  final String id;

  CategoryItemArguments({required this.title, required this.id});
}

class AppRouter {
  static const String home = '/';
  static const String launch = 'launch_screen';
  static const String oboarding = 'oboarding_screen';
  static const String cityLandmarks = '/city_landmarks_screen';
  static const String categortTrips = '/category_trips_screen';
  static const String tripDetials = '/trip_detail_screen';
  static const String about = '/about_screen';
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case launch:
        return MaterialPageRoute(
          builder: (_) => const LaunchScreen(),
        );
      case oboarding:
        return MaterialPageRoute(
          builder: (_) => const OboardingScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case categortTrips:
        final args = settings.arguments as Map<String, String>;
        return MaterialPageRoute(
          builder: (_) => CategoryTripsScreen(
            title: args['title']!,
            id: args['id']!,
          ),
        );
      case tripDetials:
        final argsTripDetials = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => TripDetailScreen(tripId: argsTripDetials),
        );
      case cityLandmarks:
        final argsCityLandmarkers = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => CityLandMarkers(
            cityName: argsCityLandmarkers,
          ),
        );
      case about:
        return MaterialPageRoute(
          builder: (_) => AboutScreen(),
        );
      default:
        throw const Text('Route not found!');
    }
  }
}
