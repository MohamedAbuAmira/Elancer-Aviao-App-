import 'package:flutter/material.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/data/models/oboarding_slider_model.dart';
import 'package:aviao/presentation/router/app_router.dart';
import 'package:aviao/presentation/screens/widgets/oboarding_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OboardingScreen extends StatefulWidget {
  const OboardingScreen({Key? key}) : super(key: key);

  @override
  _OboardingScreenState createState() => _OboardingScreenState();
}

class _OboardingScreenState extends State<OboardingScreen> {
  late PageController pageViewcontroller;
  List<SliderModel> slides = <SliderModel>[];
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    // initilize when the screen open

    slides = getSlides();
    currentIndex = 0;
    pageViewcontroller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 650.h,
            width: double.infinity,
            child: PageView.builder(
              controller: pageViewcontroller,
              itemCount: slides.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return SliderTile(
                    imgPath: slides[index].getImagePath(),
                    title: slides[index].getTitle(),
                    description: slides[index].getdescription());
              },
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          currentIndex != slides.length - 1
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.r)),
                      clipBehavior: Clip.antiAlias,
                      child: ElevatedButton(
                        onPressed: () {
                          pageViewcontroller.animateToPage(currentIndex + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linear);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: LightColors.darkColor,
                            textStyle: LightTextStyles.SFBodySmall(
                                textColor: LightColors.greyFourColor)),
                        child: const Text(
                          "Continue",
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {
                    //     pageViewcontroller.animateToPage(slides.length - 1,
                    //         duration: const Duration(milliseconds: 500),
                    //         curve: Curves.linear);
                    //   },
                    //   style: TextButton.styleFrom(
                    //     textStyle: const TextStyle(
                    //         fontSize: 16, fontWeight: FontWeight.bold),
                    //   ),
                    //   child: const Text(
                    //     "SKIP",
                    //   ),
                    // ),
                  ],
                )
              : Container(
                  height: 30.h,
                  width: 90.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(24.r)),
                  clipBehavior: Clip.antiAlias,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouter.home);
                    },
                    style: ElevatedButton.styleFrom(
                        primary: LightColors.darkColor,
                        textStyle: LightTextStyles.SFBodySmall(
                            textColor: LightColors.greyFourColor)),
                    child: const Text(
                      "Start",
                    ),
                  ),
                ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < slides.length; i++)
                currentIndex == i
                    ? _pageIndexIndicator(true)
                    : _pageIndexIndicator(false),
            ],
          ),
        ],
      ),
    );
  }

  Widget _pageIndexIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      height: isCurrentPage ? 10.h : 8.h,
      width: isCurrentPage ? 10.w : 8.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCurrentPage
            ? LightColors.greyTwoColor
            : LightColors.greyFourColor,
      ),
    );
  }
}
