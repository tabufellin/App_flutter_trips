import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Review extends StatelessWidget {

  String pathImage;
  String name = "Varuna Yass";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  int stars= 3;


  Review(this.pathImage, this.name, this.details, this.comment);
  @override
  Widget build(BuildContext context) {

    final star_border = Container (
      margin: EdgeInsets.only(
        top: 0.0,
        right: 3.0,
      ),
      child: Icon (
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container (
      margin: EdgeInsets.only(
        top: 0.0,
        right: 3.0,
      ),
      child: Icon (
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container (
      margin: EdgeInsets.only(
        top: 0.0,
        right: 3.0,
      ),
      child: Icon (
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );


    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato-Regular",
          fontWeight: FontWeight.w900 // negrilla
        ),
      ),
    );



    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato-Regular",
          color: Color(0xFFa3a5a7)
        ),
      ),
    );


    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato-Regular"
        ),
      ),
    );



    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        Row(
          children: <Widget>[
            userInfo,
            star,
            star,
            star_half,
            star_border,
            star_border
          ],
        ),
        userComment

      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle, // esto le da la forma de circulo
        image: DecorationImage (
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),

    );



    // TODO: implement build
    return Row (
      children: <Widget>[
        photo,
        userDetails

      ],
    );
  }


}