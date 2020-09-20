import 'package:flutter/material.dart';

class AvaterImage extends StatefulWidget {
  const AvaterImage({Key key, this.image, this.height, this.width});

  final String image;
  final double height, width;

  State createState() => new AvaterImageState();
}

class AvaterImageState extends State<AvaterImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage(widget.image),
            )));
  }
}
