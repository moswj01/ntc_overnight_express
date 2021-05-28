import 'package:flutter/material.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';
import 'package:ntc_overnight_express/screens/tracking_screen.dart';

class SearchWidgets extends StatefulWidget {
  SearchWidgets({Key key}) : super(key: key);

  @override
  _SearchWidgetsState createState() => _SearchWidgetsState();
}

class _SearchWidgetsState extends State<SearchWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
        color: cWhite,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "หมายเลขพัสดุ",
                hintStyle: TextStyle(
                  color: Colors.black.withAlpha(120),
                ),
                border: InputBorder.none,
              ),
              onChanged: (String keyword) {},
            ),
          ),
          IconButton(
              icon: Icon(Icons.search),
              color: bgColor,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TrackingResult()));
              }),
          IconButton(
              icon: Icon(Icons.qr_code_scanner),
              color: bgColor,
              onPressed: () {})
        ],
      ),
    );
  }
}
