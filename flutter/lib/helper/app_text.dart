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
    'p': {'size': 16, 'color': color.AppColor.textMutedColor},
    'h1': {'size': 34, 'color': color.AppColor.textPrimaryColor},
    'h2': {'size': 24, 'color': color.AppColor.textPrimaryColor},
    'h3': {'size': 20, 'color': color.AppColor.textPrimaryColor},
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
  AppText({
    Key? key,
    required this.text,
    this.size = 16,
    this.textColor = color.AppColor.textPrimaryColor,
    this.type = 'p', // Part of TextElements<Values> || 'custom'
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: type == 'custom' ? size : TextElements.types[type]['size'].toDouble(),
        color: type == 'custom' ? textColor : TextElements.types[type]['color'],
      ),
    );
  }
}

