import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button(
      {Key key,
      this.text,
      this.ontap,
      this.width,
      this.height,
      this.color,
      this.fontSize,
      this.fontFamily})
      : super(key: key);
  final Function ontap;
  final String text, fontFamily;
  final double height, width, fontSize;
  final Color color;

  State createState() => new ButtonState();
}

class ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.ontap();
        // _showDialog();
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            //BoxShadow(color: Colors.grey, offset: Offset(1, 2)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: widget.fontSize,
                  fontFamily: widget.fontFamily),
            ),
            SizedBox(
              width: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}
