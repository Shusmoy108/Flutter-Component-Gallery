import 'package:flutter/material.dart';

class ThumbnailImageShadow extends StatefulWidget {
  const ThumbnailImageShadow({Key key, this.image, this.height, this.width});

  final String image;
  final double height, width;

  State createState() => new ThumbnailImageShadowState();
}

class ThumbnailImageShadowState extends State<ThumbnailImageShadow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(1, 3)),
            ],
            //shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage(widget.image),
            )));
  }
}
