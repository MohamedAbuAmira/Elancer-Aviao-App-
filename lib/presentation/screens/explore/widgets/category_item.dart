import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:aviao/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const CategoryItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  void selectCategory(BuildContext context) {
    Navigator.pushNamed(context, AppRouter.categortTrips, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      width: 331.w,
      child: InkWell(
        onTap: () => selectCategory(context),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 10,
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
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: LightTextStyles.SFH1(
                        textColor: LightColors.whiteColor, isLight: false),
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
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
