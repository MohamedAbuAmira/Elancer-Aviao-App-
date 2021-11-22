import 'package:aviao/presentation/screens/home/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/icons.dart';
import 'package:aviao/data/cities_data.dart';
import 'package:aviao/presentation/screens/explore/explore.dart';
import 'package:aviao/presentation/screens/home/components/body.dart';
import 'package:aviao/presentation/screens/home/city_landmarks_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  late List<Map<String, Widget>> _screens;

  @override
  void initState() {
    _screens = [
      {
        'Screen': HomeBody(),
        // 'Title': 'Home',
      },
      {
        'Screen': ExploreScreen(),
        // 'Title': 'Explore',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AboutScreen(),
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: LightColors.whiteColor,
        selectedItemColor: LightColors.darkColor,
        unselectedItemColor: LightColors.greyTwoColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: LightIcons.customIcon(
                iconName: "Travel Bag",
                iconSize: 24,
                iconColor: _selectedScreenIndex == 0
                    ? LightColors.darkColor
                    : LightColors.greyTwoColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: LightIcons.customIcon(
                iconName: "Compass",
                iconSize: 24,
                iconColor: _selectedScreenIndex == 1
                    ? LightColors.darkColor
                    : LightColors.greyTwoColor),
            label: 'Explore',
          ),
        ],
      ),
    );
  }

  // BottomAppBar hjk() {
  //   return BottomAppBar(
  //     child: SizedBox(
  //       height: 83.h,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           MaterialButton(
  //             minWidth: 40,
  //             onPressed: () {
  //               setState(() {
  //                 currentScreen = HomeScreen(
  //                   title: widget.title,
  //                 );
  //                 currentTab = 1;
  //               });
  //             },
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Icon(
  //                   Icons.home,
  //                   color: currentTab == 0 ? Colors.blue : Colors.grey,
  //                 ),
  //                 Text("Home",
  //                     style: TextStyle(
  //                         color: currentTab == 0 ? Colors.blue : Colors.grey)),
  //               ],
  //             ),
  //           ),
  //           MaterialButton(
  //             minWidth: 40,
  //             onPressed: () {
  //               setState(() {
  //                 currentScreen = const ExploreScreen();
  //                 currentTab = 1;
  //               });
  //             },
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Icon(
  //                   Icons.favorite,
  //                   color: currentTab == 1 ? Colors.blue : Colors.grey,
  //                 ),
  //                 Text("Explore",
  //                     style: TextStyle(
  //                         color: currentTab == 1 ? Colors.blue : Colors.grey)),
  //               ],
  //             ),
  //           ),
  //           MaterialButton(
  //             minWidth: 40,
  //             onPressed: () {
  //               setState(() {
  //                 currentScreen = const FavouriteScreen();
  //                 currentTab = 2;
  //               });
  //             },
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Icon(
  //                   Icons.category,
  //                   color: currentTab == 2 ? Colors.blue : Colors.grey,
  //                 ),
  //                 Text("Favourite",
  //                     style: TextStyle(
  //                         color: currentTab == 2 ? Colors.blue : Colors.grey)),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

// class BottomNavigationBar extends StatefulWidget {
//   // const BottomNavigationBar({Key key}) : super(key: key);



//   BottomNavigationBar();

//   @override
//   _BottomNavigationBarState createState() => _BottomNavigationBarState();
// }

// class StatefulWidget {
// }

// class _BottomNavigationBarState extends State<BottomNavigationBar> {
//   void _selectScreen(int index) {
//     setState(() {
//       _selectedScreenIndex = index;
//     });
//   }

//   int _selectedScreenIndex = 0;

//   late List<Map<String, Object>> _screens;

//   @override
//   void initState() {
//     _screens = [
//       {
//         'Screen': HomeBody(),
//         'Title': 'تصنيفات الرحلات',
//       },
//       {
//         'Screen': Explore(),
//         'Title': 'الرحلات المفضلة',
//       },
//     ];
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: _screens[_selectedScreenIndex]!['Screen'],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: _selectScreen,
//         backgroundColor: Theme.of(context).primaryColor,
//         selectedItemColor: Theme.of(context).accentColor,
//         unselectedItemColor: Colors.white,
//         currentIndex: _selectedScreenIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard),
//             label: 'التصنيفات',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star),
//             label: 'المفضلة',
//           ),
//         ],
//       ),
//     );
//   }
// }
