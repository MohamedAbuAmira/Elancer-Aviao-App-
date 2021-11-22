import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';

class SliderTile extends StatelessWidget {
  final String imgPath;
  final String title;
  final String description;
  const SliderTile({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imgPath,
            height: 410.h,
            width: 280.w,
          ),
          SizedBox(
            height: 47.h,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            description,
            style: LightTextStyles.SFBody(textColor: LightColors.greyOneColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
