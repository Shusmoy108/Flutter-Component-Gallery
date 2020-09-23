import 'package:componentgallery/src/components/images/avaterimage.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({
    Key key,
    this.image,
  });

  final List<String> image;

  State createState() => new HorizontalListState();
}

class HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
    height: 130,
    padding: EdgeInsets.only(
    //left: 20.0,
    ),child: ListView.builder(
      scrollDirection: Axis.horizontal,

      itemCount: widget.image.length,
      itemBuilder: (context, index) {
        return Padding(padding: EdgeInsets.all(10),child: AvaterImage(image: widget.image[index],height: 50,width: 100,),);
      },
    ));
  }
}
