import 'package:flutter/material.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';

class SendingPage extends StatefulWidget {
  const SendingPage({Key key}) : super(key: key);

  @override
  _SendingPageState createState() => _SendingPageState();
}

class _SendingPageState extends State<SendingPage> {
  String dropdownValue = 'บัญชี XXX-X-XXXXX-X';
  List list = [
    'บัญชี XXX-X-XXXXX-X',
    'บัญชี XXX-X-XXXXX-X',
    'บัญชี XXX-X-XXXXX-X'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ส่งพัสดุ'),
        backgroundColor: bgColor,
        actions: [
          IconButton(
              icon: Icon(
                Icons.print_outlined,
                color: cWhite,
                size: 30,
              ),
              onPressed: null)
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "ผู้ส่ง",
                  style: titleSender,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "ชื่อผู้ส่ง",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onChanged: (String keyword) {},
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "เบอร์โทร",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onChanged: (String keyword) {},
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "ข้อมูลผู้รับ",
                  style: titleSender,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "* ระบุชื่อ ที่อยู่ เบอร์โทรศัพท์ของผู้รับ",
                  style: menuWidgetText,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: "กรอกข้อมูลผู้รับ",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(120),
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    onChanged: (String keyword) {},
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.shade200,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [bgColor, bgColor2])),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ยืนยัน',
                        style: titileLogin,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
