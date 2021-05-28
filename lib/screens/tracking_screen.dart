import 'package:flutter/material.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';

class TrackingResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text("ติดตามพัสดุ"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Center(child: Text("ไม่พบข้อมูล"))],
      ),
    );
  }
}
