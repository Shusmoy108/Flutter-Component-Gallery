import 'dart:async';

import 'package:componentgallery/src/components/buttons/buttonclass1.dart';
import 'package:componentgallery/src/components/buttons/buttonclass2.dart';
import 'package:componentgallery/src/components/buttons/buttonclass3.dart';
import 'package:componentgallery/src/components/carousel/carousel.dart';
import 'package:componentgallery/src/components/checkbox/checkbox.dart';
import 'package:componentgallery/src/components/flipcard/flipcard.dart';
import 'package:componentgallery/src/components/images/avaterimage.dart';
import 'package:componentgallery/src/components/images/avaterimagewithshadow.dart';
import 'package:componentgallery/src/components/images/roundedimage.dart';
import 'package:componentgallery/src/components/images/thumbnailimage.dart';
import 'package:componentgallery/src/components/images/thumbnailimagewithshadow.dart';
import 'package:componentgallery/src/components/modals/dialoguebox.dart';
import 'package:componentgallery/src/components/otp/otppagenew.dart';
import 'package:componentgallery/src/components/profilecard/profilecard.dart';
import 'package:componentgallery/src/components/progressbar/progressbar.dart';
import 'package:componentgallery/src/components/timer/timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:componentgallery/src/components/buttons/joinbutton.dart';
import 'package:componentgallery/src/pages/login/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String checkboxItems = "None Selected";
  static const duration = const Duration(seconds: 1);
  Timer timer;
  @override
  void initState() {
    super.initState();
    if (timer == null)
      timer = Timer.periodic(duration, (Timer t) {
        progress();
      });
  }

  void progress() {
    setState(() {
      progs = progs + 10;
      if (progs >= 400) {
        progs = 0;
      }
    });
  }

  _HomeState();
  double progs = 0;
  int _selectedIndex = 0;
  var pages = [
    Home(),
    Home(),
    //ExamlistPage(),
    Home(),
    Home(),
  ];

  logout() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return LoginScreen();
        },
      ),
    );
  }

  Widget logoutButton() {
    return InkWell(
      onTap: () {
        logout();
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.red,
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
              'Logout',
              style: TextStyle(
                  color: Colors.white, fontSize: 15.0, fontFamily: 'Merienda'),
            ),
            SizedBox(
              width: 0.0,
            ),
          ],
        ),
      ),
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final snackBar = SnackBar(
    content: Text("Snack Bar"),
    //backgroundColor: Colors.red,
    duration: Duration(seconds: 3),
  );
  void checkboxValue(String value) {
    setState(() {
      if (value == null) {
        checkboxItems = "None Selected";
      } else {
        checkboxItems = value;
      }
    });

    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal,
          title: Text("App Name"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                _scaffoldKey.currentState.showSnackBar(snackBar);
              },
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Text(
                "Buttons",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Button(
                    text: 'Button 1',
                    ontap: () {},
                    width: 100,
                    height: 40,
                    fontSize: 15,
                    color: Colors.blue,
                    fontFamily: 'Montserrat',
                  ),
                  Button1(
                    text: 'Button 2',
                    ontap: () {},
                    width: 100,
                    height: 40,
                    fontSize: 15,
                    color: Colors.purple,
                    fontFamily: 'Montserrat',
                  ),
                  Button2(
                    text: 'Button 3',
                    ontap: () {},
                    radius: 100,
                    fontSize: 15,
                    color: Colors.amber,
                    fontFamily: 'Montserrat',
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Button3(
                    text: 'Button 4',
                    ontap: () {},
                    size: 100,
                    fontSize: 15,
                    color: Colors.blueGrey,
                    fontFamily: 'Montserrat',
                  ),
                ],
              ),
              Text(
                "Dialogue Box/Modal",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              Dialoguebox(),
              Text(
                "Images",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              Center(
                child: Text(
                  "Image without Shadow",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  AvaterImage(
                    image: "images/joker.jpg",
                    height: 100,
                    width: 100,
                  ),
                  ThumbnailImage(
                    image: "images/batman.jpg",
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              Center(
                child: Text(
                  "Image with Shadow",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  AvaterImageShadow(
                    image: "images/batman1.jpg",
                    height: 100,
                    width: 100,
                  ),
                  ThumbnailImageShadow(
                    image: "images/black.jpg",
                    height: 100,
                    width: 100,
                  )
                ],
              ),
              Text(
                "Carousel( carousel_slider package needed....)",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              Carousel(),
              Text(
                "Timer",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              CountDownTimer(
                secondsRemaining: 1500,
                whenTimeExpires: () {},
                countDownTimerStyle: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Flip Card",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              Container(
                width: 200,
                height: 200,
                child: WidgetFlipper(
                  frontWidget: RoundedImage(image: "images/batman.jpg"),
                  backWidget: RoundedImage(image: "images/joker.jpg"),
                ),
              ),
              Text(
                "Dynamic checkbox",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              DynamicCheckboxClass(
                  options: ['Joker', 'Batman', 'Ironman', 'Black Panther'],
                  label: 'Superheros',
                  ontap: checkboxValue,
                  labelStyle: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Montserrat',
                      color: Colors.orange,
                      fontWeight: FontWeight.w700),
                  activeColor: Colors.green,
                  optionStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    //color: Colors.orange,
                    fontStyle: FontStyle.italic,
                  )),
              Text(
                "Selected Items",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700),
              ),

              Text(
                checkboxItems,
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Text(
                "Progress Bar",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.italic),
              ),
              Divider(
                thickness: 2,
              ),
              Progressbar(
                progress: 150,
                width: 400,
              ),

              Center(
                child: Text(
                  "Normal Progress Bar",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic),
                ),
              ),
              Progressbar(
                progress: progs,
                width: 400,
              ),
              Center(
                child: Text(
                  "Animated Progress Bar",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //ProfileCard(image:"images/joker.jpg"),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.teal,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.class_),
              title: Text('Components'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pages),
              title: Text('Pages'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stars),
              title: Text('Achievement'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
            ),
          ],
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        floatingActionButton: logoutButton());
  }
}
