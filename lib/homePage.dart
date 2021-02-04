import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:qrcode/generate.dart';
import 'package:qrcode/halamanCarousel.dart';
import 'package:qrcode/halamanGridView.dart';
import 'package:qrcode/profil.dart';
import 'package:qrcode/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedpage = 0;

  final _halaman = [Profil(), ScanPage(), GeneratePage(), HalamanGridView(), HalamanCarousel()]; // Array untuk 3 halaman

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        color: Colors.blue,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        items: [
          Icon(Icons.account_circle, size: 35),
          Icon(Icons.camera_alt, size: 35),
          Icon(Icons.qr_code, size: 35),
          Icon(Icons.dashboard, size: 35),
          Icon(Icons.web, size: 35),
        ], onTap: (index){
        setState(() {
          selectedpage = index;
        });
      }, ),
      body: _halaman[selectedpage], /*Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(image: NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556")),
            flatButton("Scan QR CODE", ScanPage()),
            SizedBox(height: 20.0,),
            flatButton("Generate QR CODE", GeneratePage()),
          ],
        ),
      ),*/
    );
  }

  /*Widget flatButton(String text, Widget widget) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: () async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.blue,width: 3.0),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }*/
}
