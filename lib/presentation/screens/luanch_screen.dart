import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'package:aviao/presentation/router/app_router.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, AppRouter.oboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        alignment: Alignment.center,
        child: Lottie.asset('assets/images/world_loading.json'),
      ),
    );
  }
}
