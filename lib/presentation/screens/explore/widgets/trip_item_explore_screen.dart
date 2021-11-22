import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/presentation/router/app_router.dart';

class DisplayTripsItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const DisplayTripsItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

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
      height: 360.h,
      width: 331.w,
      child: InkWell(
        onTap: () => selectTrip(context),
        child: Card(
          elevation: 30,
          shadowColor: LightColors.blueSkyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Stack(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Image.network(
                  imageUrl,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: LightTextStyles.SFH1(
                        textColor: LightColors.whiteColor, isLight: false),
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
    );
  }
}
