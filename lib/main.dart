import 'package:flutter/material.dart';

import 'core/constants/strings.dart';

import 'core/themes/app_theme.dart';

import 'presentation/router/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: Strings.appTitle,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRouter.launch,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
    ;
  }
}
