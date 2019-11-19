import 'package:flutter/material.dart'; //
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace); // constructor, ya ahí ya esta creado a diferencia d ejava

  @override // es necesario hacerle el override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_border = Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon (
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon (
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container (
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon (
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row (
      children: <Widget>[
        Container (
          margin: EdgeInsets.only(
            top: 320.0, // son 320 desde el techo hasta ahi
            left: 20.0,
            right: 20.0
          ),

          child: Text (
            namePlace,
            style: TextStyle(
              fontFamily: "Lato-Regular",
              fontSize: 30.0,
              fontWeight: FontWeight.w900 // negrita
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star_border

          ],
        ),

      ],
    );

    final commentary = Container(
          margin: EdgeInsets.only(
              top: 5.0,
              left: 20.0,
              right: 20.0,
              bottom: 0.0,
          ),
          child: Text(
              descriptionPlace,
              style: TextStyle(
                fontFamily: "Lato-Regular",
                fontSize: 15,
              ),
             textAlign: TextAlign.left,
             textWidthBasis: TextWidthBasis.longestLine,
          ),
        );

    final joinScreen = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        commentary,
        ButtonPurple("Navigate")
      ],

    );


    return joinScreen;
  }



}