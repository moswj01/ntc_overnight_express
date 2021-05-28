import 'package:flutter/material.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';

class MenuWidgets extends StatelessWidget {
  final String icon;
  final String name;
  MenuWidgets({this.icon, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 45,
            child: Image.asset(icon),
          ),
          Text(
            name,
            style: menuWidgetText,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
