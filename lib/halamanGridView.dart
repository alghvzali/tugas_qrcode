import 'package:flutter/material.dart';

class HalamanGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double appBarHeight = kToolbarHeight;
    final double paddingTop = mediaQueryData.padding.top;
    final double paddingBottom = mediaQueryData.padding.bottom;
    final double heightScreen = mediaQueryData.size.height - paddingBottom - paddingTop - appBarHeight - 220.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Latihan GridView",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(padding:const EdgeInsets.fromLTRB(0, 0.0, 0, 0.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: widthScreen/heightScreen,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xfff6f6f6)
                ),
                child: Center(
                  child: Text("1", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xffc7ffd8)
                ),
                child: Center(
                  child: Text("2", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xff98ded9)
                ),
                child: Center(
                  child: Text("3", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xff161d6f)
                ),
                child: Center(
                  child: Text("4", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xff161d6f)
                ),
                child: Center(
                  child: Text("5", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0),),
                    color: Color(0xff161d6f)
                ),
                child: Center(
                  child: Text("6", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
