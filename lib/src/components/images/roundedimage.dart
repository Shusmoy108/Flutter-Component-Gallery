import 'package:flutter/material.dart';

class RoundedImage extends StatefulWidget {
  const RoundedImage({
    Key key,
    this.image,
  });

  final String image;




  State createState() => new RoundedImageState();
}
class RoundedImageState extends State<RoundedImage> {

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 50.0,
        height: 300.0,
        child: Card(
          semanticContainer: true,

          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'images/joker.jpg',
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          margin: EdgeInsets.all(10),
        ),);
  }
}