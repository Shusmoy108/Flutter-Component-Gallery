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
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.asset(
        widget.image,
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
