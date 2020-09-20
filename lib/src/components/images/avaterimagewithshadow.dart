import 'package:flutter/material.dart';

class AvaterImageShadow extends StatefulWidget {
  const AvaterImageShadow({Key key, this.image, this.height, this.width});

  final String image;
  final double height, width;

  State createState() => new AvaterImageShadowState();
}

class AvaterImageShadowState extends State<AvaterImageShadow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(1, 3)),
            ],
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: new AssetImage(widget.image),
            )));
  }
}
