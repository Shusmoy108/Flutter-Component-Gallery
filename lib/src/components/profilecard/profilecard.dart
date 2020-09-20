import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({
    Key key,
    this.image,
  });

  final String image;

  State createState() => new ProfileCardState();
}

class ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        children: <Widget>[
          Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage(widget.image),
                  ))),
//          ClipOval(
//            child: Image.asset(
//              widget.image,
//              fit: BoxFit.fill,
//            ),
//          ),
          SizedBox(
            width: 2,
          ),
          Column(
            children: <Widget>[
              Text("hello"),
              Text("hello"),
              Text("hello"),
              Text("hello")
            ],
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
