import 'dart:ui';

import 'package:flutter/material.dart';

class HalamanCarousel extends StatefulWidget {
  @override
  _HalamanCarouselState createState() => _HalamanCarouselState();
}

class _HalamanCarouselState extends State<HalamanCarousel> {
  PageController _pageController;
  int _currentSlide = 1;

  final _images = ['images/56.jpg', 'images/60.jpg', 'images/71.jpg'];
  final _favoriteImage = [
    {
      'name': 'Bantimurung',
      'image': 'images/bantimurung.jpg',
      'cat': 'Air Terjun',
      'open': '09.00-17.00 WITA'
    },
    {
      'name': 'Pantai Bira',
      'image': 'images/bira.jpg',
      'cat': 'Wisata Bahari',
      'open': '06.00-21.00 WITA'
    },
    {
      'name': 'Malino',
      'image': 'images/malino.jpg',
      'cat': 'Wisata Alam',
      'open': '09.00-17.00 WITA'
    },
    {
      'name': 'Pantai Losari',
      'image': 'images/pantai-losari.jpg',
      'cat': 'Landmark',
      'open': '06.00-17.00 WITA'
    },
    {
      'name': 'Tana Toraja',
      'image': 'images/toraja.jpg',
      'cat': 'Wisata Budaya',
      'open': '9.00-17.00 WITA'
    },
  ].toList();

  @override
  void initState() {
    _pageController = PageController(
      initialPage: _currentSlide,
      keepPage: false,
      viewportFraction: 0.5,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    final double widthScreen = mediaQueryData.size.width;
    final double appBarHeight = kToolbarHeight;
    final double paddingTop = mediaQueryData.padding.top;
    final double paddingBottom = mediaQueryData.padding.bottom;
    final double heightScreen = mediaQueryData.size.height - paddingBottom - paddingTop - appBarHeight - 220.0;
    return Scaffold(
      body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  profileArea(),
                  Padding(padding: const EdgeInsets.only(top:15.0),
                  child: Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Text(
                    "Live with no excuses and travel with no regrets, Oscar Wild",
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Favorite Places',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Container(
                        height: 70,
                        child: ListView.separated(
                          physics: PageScrollPhysics(),
                          separatorBuilder: (context, index) => Divider(
                            indent: 3,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: _favoriteImage.length,
                          itemBuilder: (context, index) => favoritePlace(index),
                        ),
                      ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top:10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.info_outline,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Informasi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 1.0, left: 8, bottom: 5),
                          child: Text(
                            "Jangan membuang sampah sekecil apapun selama berada dilokasi pariwisata, cagar budaya dan cagar alam adalah miliki bersama, maka lestarikanlah.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Wisata Alam",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Icon(
                            Icons.check_circle,
                            color: Colors.red,
                          ),
                          Text(
                            'Wisata Budaya',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14
                            ),
                          ),
                          Text(
                            'Wisata Kuliner',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            Divider(),
            Container(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentSlide = value;
                  });
                },
                itemBuilder: (BuildContext context, int index) =>
                    slideShow(index),
                itemCount: 3,
              ),
            ),
          ],
        ),
    );
  }

  profileArea() {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          margin: EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              'assets/profil.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Fariz Muhammad Al-Ghazali',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text('samuderastudio')
          ],
        ),
        Spacer(
          flex: 2,
        ),
        Icon(
          Icons.menu,
          size: 50,
        )
      ],
    );
  }

  slideShow(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            _images[index],
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  favoritePlace(index) {
    return SizedBox(
      height: 80,
      width: 250,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
            border: Border.all(width: 0.3, color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    _favoriteImage[index]['image'],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _favoriteImage[index]['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    _favoriteImage[index]['cat'],
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Text(
                    _favoriteImage[index]['open'],
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}