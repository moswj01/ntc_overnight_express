// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ntc_overnight_express/constants/color_constants.dart';

class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Set<Marker> _marker = {};
  BitmapDescriptor markerIcon;
  @override
  void initState() {
    super.initState();
    setCustomIcon();
  }

  void setCustomIcon() async {
    markerIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.5),
      'assets/logo.png',
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _marker.add(Marker(
          markerId: MarkerId('company'),
          position: LatLng(13.7486628, 100.5111918),
          icon: markerIcon,
          infoWindow: InfoWindow(
              title: "NTC สาขารองเมือง", snippet: "บริการการขนส่ง")));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text("พื้นที่บริการ"),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _marker,
        initialCameraPosition:
            CameraPosition(target: LatLng(13.7486628, 100.5111918), zoom: 12),
      ),
    );
  }
}
