import 'package:flutter/material.dart';
import 'image_liked_profile_and_info.dart';

class ListImageLikedProfileAndInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container (
      child: ListView(
        padding: EdgeInsets.all(5.0),
        scrollDirection: Axis.vertical, // eso crea el scroll horizontal
        children: <Widget>[
          ImageLikedProfileAndInfo("asset/img/casa_lago.jpeg", "Casa del Lago", "Relax, chill, long walkings", "123,123,123"),
          ImageLikedProfileAndInfo("asset/img/puertas.jpg", "The root paradise", "Just enjoy the nature in every corner", "100,201,932"),
          Container(
            padding:  EdgeInsets.only(
              bottom: 60.0,
            ),
            child: ImageLikedProfileAndInfo("asset/img/cuarto.jpg", "Tzun Sziu ", "Master Lesson of Yoga with Utakata Yokeimi", "123,142")
          )






        ]
      ),

    );
  }
}
/*
child: ListView(
padding: EdgeInsets.all(25.0),
scrollDirection: Axis.horizontal, // eso crea el scroll horizontal
children: <Widget>[
CardImage("asset/img/lago.jpg"),
CardImage("asset/img/cuarto.jpg"),
CardImage("asset/img/casa_lago.jpeg"),
CardImage("asset/img/puertas.jpg"),
],

*/