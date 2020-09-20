import 'package:flutter/material.dart';

class Button2 extends StatefulWidget {
  const Button2(
      {Key key,
      this.text,
      this.ontap,
      this.radius,
      this.color,
      this.icon,
      this.fontSize,
      this.fontFamily})
      : super(key: key);
  final Function ontap;
  final String text, fontFamily;
  final double radius, fontSize;
  final Color color;
  final IconData icon;

  State createState() => new ButtonState2();
}

class ButtonState2 extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.ontap();
        // _showDialog();
      },
      child: Container(
        width: widget.radius,
        height: widget.radius,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(widget.radius),
          boxShadow: [
            //BoxShadow(color: Colors.grey, offset: Offset(1, 2)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
//            Icon(widget.icon,size: 15,),
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
