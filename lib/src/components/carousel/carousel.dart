import 'package:componentgallery/src/components/images/roundedimage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key key,
  });

  State createState() => new CarouselState();
}

class CarouselState extends State<Carousel> {
  int _currentIndex = 0;
  List<String> cardList = [
    "images/iron.jpg",
    "images/batman.jpg",
    "images/joker.jpg",
    "images/black.jpg",
    "images/batman1.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 200.0,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      pauseAutoPlayOnTouch: Duration(seconds: 10),
      aspectRatio: 2.0,
      onPageChanged: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
//             items: <Widget>[
//               Container(
//          height: MediaQuery.of(context).size.height*0.30,
//          width: MediaQuery.of(context).size.width,
//                 child:       RoundedImage(image: 'images/joker.jpg',),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height*0.30,
//                 width: MediaQuery.of(context).size.width,
//                 child:        RoundedImage(image: 'images/batman.jpg',),
//               ),
//
//               Container(
//                 height: MediaQuery.of(context).size.height*0.30,
//                 width: MediaQuery.of(context).size.width,
//                 child:          RoundedImage(image: 'images/black.jpg',),
//               ),
//
//               Container(
//                 height: MediaQuery.of(context).size.height*0.30,
//                 width: MediaQuery.of(context).size.width,
//                 child:          RoundedImage(image: 'images/batman1.jpg',),
//               ),
//
//               Container(
//                 height: MediaQuery.of(context).size.height*0.30,
//                 width: MediaQuery.of(context).size.width,
//                 child:               RoundedImage(image: 'images/iron.jpg',),
//               ),
//
//             ],
      items: cardList.map((card) {
        return Builder(builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            child: RoundedImage(
              image: card,
            ),
          );
        });
      }).toList(),
    );
  }
}
