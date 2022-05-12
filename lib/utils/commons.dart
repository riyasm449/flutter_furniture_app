import 'package:flutter/material.dart';

// list of colors that we use in our app
const kBackgroundColor = Color(0xFFF1EFF1);
const kPrimaryColor = Color(0xFF035AA6);
const kSecondaryColor = Color(0xFFFFA41B);
const kTextColor = Color(0xFF000839);
const kTextLightColor = Color(0xFF747474);
const kBlueColor = Color(0xFF40BAD5);

const kDefaultPadding = 20.0;

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);

class Commons {
  static String baseURL = 'https://api.alhajisuya.com/api/';
  static const hintColor = Color(0xFF4D0F29);
  static Color bgColor = Color(0xFF035AA6);
  static Color textColor = Commons.colorFromHex('#363636');
  static Color yellowColor = Commons.colorFromHex('#FFC529');
  static Color bgLightColor = Color(0xFF035AA6).withOpacity(.7);

  static Color greyAccent1 = Commons.colorFromHex('#F3F3F3');
  static Color greyAccent2 = Commons.colorFromHex('#cccccc');
  static Color greyAccent3 = Commons.colorFromHex('#999999');
  static Color greyAccent4 = Commons.colorFromHex('#8e8e93');
  static Color greyAccent5 = Commons.colorFromHex('#333333');

  static Color colorFromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Widget topBar(BuildContext context, {bool showBackButton = false}) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
        ),
        Positioned(top: -50, left: -75, child: innerCircle()),
        Positioned(
          top: -100,
          right: -100,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Commons.bgLightColor, borderRadius: BorderRadius.circular(100)),
          ),
        ),
        Positioned(
          top: -100,
          left: 0,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Commons.bgColor, borderRadius: BorderRadius.circular(100)),
          ),
        ),
        if (showBackButton) Positioned(top: 65, left: 30, child: backButton(context))
      ],
    );
  }

  static Widget backButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(.2), blurRadius: 10.0, spreadRadius: 2, offset: Offset(2.0, 2.0))
          ],
        ),
        child: Icon(Icons.navigate_before_rounded, color: Colors.black),
      ),
    );
  }

  static Widget innerCircle() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(color: Commons.bgLightColor, borderRadius: BorderRadius.circular(100)),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100)),
        ),
      ],
    );
  }
}
