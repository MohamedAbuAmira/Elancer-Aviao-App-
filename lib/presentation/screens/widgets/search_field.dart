import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/icons.dart';
import 'package:aviao/core/constants/text_styles.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: LightColors.greyFourColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: TextField(
          onChanged: (value) => print(value),
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(horizontal: 56.w, vertical: 16.h),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search",
            hintStyle:
                LightTextStyles.SFH6(textColor: LightColors.greyOneColor),
            prefixIcon: Icon(Icons.search),
          )),
    );
  }
}
