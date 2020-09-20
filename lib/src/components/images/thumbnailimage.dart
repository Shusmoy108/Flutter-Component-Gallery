import 'package:flutter/material.dart';

class ThumbnailImage extends StatefulWidget {
  const ThumbnailImage({Key key, this.image, this.height, this.width});

  final String image;
  final double height, width;

  State createState() => new ThumbnailImageState();
}

class ThumbnailImageState extends State<ThumbnailImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),

            //shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage(widget.image),
            )));
  }
}
