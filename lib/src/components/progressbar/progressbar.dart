import 'package:flutter/material.dart';

class Progressbar extends StatefulWidget {
  const Progressbar(
      {Key key,
      this.width = 200,
      this.progress = 100,
      this.whenDone,
      this.backGroundColor = Colors.black12,
      this.progressColor = Colors.green});

  final double width, progress;
  final Color backGroundColor, progressColor;
  final Function whenDone;

  State createState() => new ProgressbarState();
}

class ProgressbarState extends State<Progressbar> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: widget.width,
          height: 20,
          decoration: BoxDecoration(
            color: widget.backGroundColor,
            //shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: Align(
              alignment: Alignment.topLeft,
////      Row(
////        children: <Widget>[
              child: Container(
                width: widget.progress,
                height: 20,
                decoration: BoxDecoration(
                  color: widget.progressColor,
                  borderRadius: BorderRadius.circular(100.0),
                ),
//
//          ) ,
                //SizedBox(width: (widget.width-widget.progress),)
//        ],
//      )
              )),
        ));
  }
}
