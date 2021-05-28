import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';
import 'package:ntc_overnight_express/screens/login_screen.dart';

class BottomNavigationNTC extends StatefulWidget {
  BottomNavigationNTC({Key key}) : super(key: key);

  @override
  _BottomNavigationNTCState createState() => _BottomNavigationNTCState();
}

class _BottomNavigationNTCState extends State<BottomNavigationNTC> {
  int indexSelected = 0;
  var styleText = GoogleFonts.mitr(fontSize: 12, color: subtitile);

  void _onTapped(int index) {
    setState(() {
      indexSelected = index;
      if (indexSelected == 1 || indexSelected == 2) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: cWhite,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5)),
        ],
      ),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'หน้าแรก'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined), label: 'รายการของฉัน'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'ฉัน'),
        ],
        currentIndex: indexSelected,
        selectedItemColor: bgColor,
        unselectedItemColor: subtitile,
        backgroundColor: Colors.transparent,
        showSelectedLabels: true,
        selectedFontSize: 11,
        elevation: 0,
        onTap: _onTapped,
      ),
    );
  }
}
