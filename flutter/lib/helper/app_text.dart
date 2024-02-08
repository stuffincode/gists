/**
 * @project: AquaMore
 * @author: @stuffincode - Riaz Ahamed
 * @website: https://www.trilliud.com/AquaMore
 * ---
 * @description:
 *  - Used to pre-define elements and constants
 *  - Optionally can override with @type = `custom`
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aquamore/helpers/colors.dart' as color;

class TextElements {
  static Map<String, dynamic> types = <String, dynamic>{
    'p': {'size': 12, 'color': color.AppColor.textMutedColor},
    'h1': {'size': 34, 'color': color.AppColor.textPrimaryColor},
    'h2': {'size': 24, 'color': color.AppColor.textPrimaryColor},
    'h3': {'size': 20, 'color': color.AppColor.textPrimaryColor},
    'h4': {'size': 14, 'color': color.AppColor.black},
  };
}

class AppText extends StatelessWidget {
  /*
  * @params:
  *   @size - number
  *   @textColor - Font color
  *   @type - typeOf TextElements || String<'custom'> to override with above params
  * */
  num size;
  final String text;
  final Color textColor;
  final String type;
  final FontWeight textWeight;
  AppText({
    Key? key,
    required this.text,
    this.size = 16,
    this.textColor = Colors.black,
    this.textWeight = FontWeight.normal,
    this.type = 'p', // Part of TextElements<Values> || 'custom'
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: TextElements.types[type]['size'].toDouble(),
        color: TextElements.types[type]['color'],
        fontWeight: textWeight,
        height: 1.5,
      ),
    );
  }
}

class AppTextCustom extends StatelessWidget {
  /*
  * @params:
  *   @size - number
  *   @textColor - Font color
  * */
  double size;
  final String text;
  final Color textColor;
  final FontWeight textWeight;
  AppTextCustom({
    Key? key,
    required this.text,
    this.size = 16,
    this.textColor = Colors.black,
    this.textWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: textWeight,
        height: 1.60,
      ),
    );
  }
}

