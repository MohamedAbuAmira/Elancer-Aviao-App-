import 'package:aviao/core/constants/colors.dart';
import 'package:aviao/core/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutScreen extends StatelessWidget {
  String _message = 'About';

  AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actionsIconTheme:
              const IconThemeData(color: LightColors.deepDarkColor),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.5),
          centerTitle: true,
          title: Text(
            _message,
            style: LightTextStyles.SFH5(
                textColor: LightColors.darkColor, isLight: false),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    LightColors.blueSkyColor,
                    LightColors.blueSkyLightColor,
                    Colors.blueGrey.shade100,
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                  radius: 100.r,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Mohammed Abu Amira',
                    style: LightTextStyles.SFH6(
                        textColor: LightColors.darkColor, isLight: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Trainee as Flutter Developer \n in eLancer project at UCASTI',
                  style:
                      LightTextStyles.SFBody(textColor: LightColors.darkColor),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  color: Colors.white,
                  indent: 20.0,
                  endIndent: 20.0,
                  thickness: 1.5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ItemCard(
                      displayText: 'mohammed.tayser94@gmail.com',
                    ),
                    ItemCard(
                      displayText: '+97059776792',
                    ),
                    ItemCard(
                      displayText: 'Gaza Strip, Palestine',
                    ),
                  ],
                ),
              ],
            )));
  }
}

class ItemCard extends StatelessWidget {
  final String? displayText;

  ItemCard({Key? key, this.displayText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 30,
      shadowColor: Colors.black,
      margin: EdgeInsets.all(25),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.r),
          borderSide: BorderSide(color: Colors.orangeAccent, width: 0.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(displayText!,
                style: LightTextStyles.SFH6(
                    textColor: LightColors.deepDarkColor, isLight: false)),
          ],
        ),
      ),
    );
  }
}
