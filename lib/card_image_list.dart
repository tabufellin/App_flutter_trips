import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Container (
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal, // eso crea el scroll horizontal
        children: <Widget>[
          CardImage("asset/img/lago.jpg"),
          CardImage("asset/img/cuarto.jpg"),
          CardImage("asset/img/casa_lago.jpeg"),
          CardImage("asset/img/puertas.jpg"),
        ],
      ),
    );
  }

}