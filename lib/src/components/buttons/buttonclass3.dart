import 'package:flutter/material.dart';

class Button3 extends StatefulWidget {
  const Button3(
      {Key key,
      this.text,
      this.ontap,
      this.size,
      this.color,
      this.fontSize,
      this.fontFamily})
      : super(key: key);
  final Function ontap;
  final String text, fontFamily;
  final double size, fontSize;
  final Color color;

  State createState() => new ButtonState3();
}

class ButtonState3 extends State<Button3> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.ontap();
        // _showDialog();
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.0),
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
