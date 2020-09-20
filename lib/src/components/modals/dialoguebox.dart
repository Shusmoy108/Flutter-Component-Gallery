import 'package:componentgallery/src/components/buttons/joinbutton.dart';
import 'package:flutter/material.dart';

class Dialoguebox extends StatefulWidget {
  State createState() => new DialogueboxState();
}

class DialogueboxState extends State<Dialoguebox> {
  TextEditingController input1controller = new TextEditingController();
  TextEditingController input2controller = new TextEditingController();
  void _topToCenterDialog() {
    final _formKey = GlobalKey<FormState>();
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return SlideTransition(
            position:
                Tween(begin: Offset(0, -1), end: Offset(0, 0)).animate(a1),
            //position: Tween(begin: Offset(1, 0), end: Offset(0, 0)).animate(a1),
            child: AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Input Dialogue Box'),
              content: Form(
                key: _formKey,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  children: <Widget>[
                    TextFormField(
                      controller: input1controller,
                      decoration:
                          new InputDecoration(labelText: 'Input Field One'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a Text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: input2controller,
                      decoration:
                          new InputDecoration(labelText: 'Input Field two'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a Text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                Button(
                  text: "Close",
                  ontap: close,
                  width: 80,
                  height: 40,
                  color: Colors.redAccent,
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Button(
                    text: "Submit",
                    ontap: close,
                    width: 80,
                    height: 40,
                    color: Colors.blueAccent,
                    fontFamily: 'Montserrat',
                    fontSize: 15)
              ],
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void _bottomToCenterDialog() {
    final _formKey = GlobalKey<FormState>();
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return SlideTransition(
            position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(a1),
            //position: Tween(begin: Offset(1, 0), end: Offset(0, 0)).animate(a1),
            child: AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Warning Dialogue Box'),
              content: Form(
                key: _formKey,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  children: <Widget>[
                    Text(
                      "Do you want to exit from the app?",
                      style: TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                Button(
                  text: "No",
                  ontap: close,
                  width: 40,
                  height: 25,
                  color: Colors.redAccent,
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Button(
                    text: "Yes",
                    ontap: close,
                    width: 40,
                    height: 25,
                    color: Colors.green,
                    fontFamily: 'Montserrat',
                    fontSize: 15)
              ],
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void _rightToCenterDialog() {
    final _formKey = GlobalKey<FormState>();
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return SlideTransition(
            position: Tween(begin: Offset(1, 0), end: Offset(0, 0)).animate(a1),
            child: AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Input Dialogue Box'),
              content: Form(
                key: _formKey,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  children: <Widget>[
                    TextFormField(
                      controller: input1controller,
                      decoration:
                          new InputDecoration(labelText: 'Input Field One'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter a Text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog
                Button(
                  text: "Close",
                  ontap: close,
                  width: 80,
                  height: 40,
                  color: Colors.redAccent,
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Button(
                    text: "Submit",
                    ontap: close,
                    width: 80,
                    height: 40,
                    color: Colors.blueAccent,
                    fontFamily: 'Montserrat',
                    fontSize: 15)
              ],
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void _leftToCenterDialog() {
    final _formKey = GlobalKey<FormState>();
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return SlideTransition(
            position:
                Tween(begin: Offset(-1, 0), end: Offset(0, 0)).animate(a1),
            child: AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Success Dialogue Box'),
              content: Form(
                key: _formKey,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 5,
                  children: <Widget>[
                    Text(
                      "You have succesfully done the job...",
                      style: TextStyle(fontSize: 15, fontFamily: 'Montserrat'),
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog

                Button(
                    text: "OK",
                    ontap: close,
                    width: 40,
                    height: 25,
                    color: Colors.green,
                    fontFamily: 'Montserrat',
                    fontSize: 15)
              ],
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void close() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Button(
              text: "Dialogue Box from top",
              ontap: _topToCenterDialog,
              width: 250,
              height: 40,
              color: Colors.teal,
              fontFamily: 'Montserrat',
              fontSize: 15),
          SizedBox(
            height: 5,
          ),
          Button(
              text: "Dialogue Box from bottom",
              ontap: _bottomToCenterDialog,
              width: 250,
              height: 40,
              color: Colors.teal,
              fontFamily: 'Montserrat',
              fontSize: 15),
          SizedBox(
            height: 5,
          ),
          Button(
              text: "Dialogue Box from right",
              ontap: _rightToCenterDialog,
              width: 250,
              height: 40,
              color: Colors.teal,
              fontFamily: 'Montserrat',
              fontSize: 15),
          SizedBox(
            height: 5,
          ),
          Button(
              text: "Dialogue Box from left",
              ontap: _leftToCenterDialog,
              width: 250,
              height: 40,
              color: Colors.teal,
              fontFamily: 'Montserrat',
              fontSize: 15)
        ],
      ),
    );
  }
}
