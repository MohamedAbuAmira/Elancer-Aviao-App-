import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class LightIcons {
  LightIcons._();

  // SvgPicture edit = newMethod();

  static SvgPicture customIcon(
      {required String iconName,
      Color iconColor = Colors.white,
      int iconSize = 16}) {
    String iconPath =
        'assets/icons/light_icons/LIGHT_ICONS_${iconSize.toString()}_$iconName.svg';
    return SvgPicture.asset(iconPath, color: iconColor);
  }
}
