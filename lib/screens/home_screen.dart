import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';
import 'package:ntc_overnight_express/screens/login_screen.dart';
import 'package:ntc_overnight_express/screens/map.dart';
import 'package:ntc_overnight_express/screens/sending_page.dart';
import 'package:ntc_overnight_express/widgets/MenuWidgets.dart';
import 'package:ntc_overnight_express/widgets/bottom_navigation.dart';
import 'package:ntc_overnight_express/widgets/search_bar.dart';
import 'package:ntc_overnight_express/widgets/swiper_widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Image.asset(
          'assets/logo.png',
          width: 150,
        ),
        elevation: 0,
        actions: [
          Icon(
            Icons.notifications_none,
            size: 30,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: bgColor,
              ),
              accountName: Text("Please sign in your account"),
              accountEmail: Text("Sign in"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: subtitile,
                child: Image.asset(
                  'assets/man.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              onDetailsPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            SearchWidgets(),
            SwiperWidgets(),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'บริการของเรา',
                style: GoogleFonts.mitr(
                    fontSize: 25, fontWeight: FontWeight.w600, color: bgColor),
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SendingPage()));
                  },
                  child: MenuWidgets(
                      icon: './assets/parcel.png', name: 'ส่งพัสดุ'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: MenuWidgets(
                      icon: './assets/schedule.png',
                      name: 'บัญชีเก็บเงินปลายทาง'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Maps()));
                  },
                  child: MenuWidgets(
                      icon: './assets/map.png', name: 'พื้นที่บริการ'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: MenuWidgets(
                      icon: './assets/delivery_truck.png',
                      name: 'เรียกรถส่งพัสดุ'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: MenuWidgets(
                      icon: 'assets/calculations.png', name: 'ประมาณราคา'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: MenuWidgets(
                      icon: 'assets/manual.png', name: 'วิธีการใช้บริการ'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: MenuWidgets(
                      icon: 'assets/insurance.png', name: 'เงื่อนไขการส่ง'),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: MenuWidgets(
                      icon: 'assets/communicate.png', name: 'ติดต่อเรา'),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationNTC(),
    );
  }
}
