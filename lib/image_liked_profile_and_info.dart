import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'image_liked_profile.dart';
import 'image_liked_info.dart';

// ignore: must_be_immutable
class ImageLikedProfileAndInfo extends StatelessWidget {

  String pathImage = "asset/img/casa_lago.jpeg";
  String title = "Casa del Lago";
  String description= "Chill, relax and long walking";
  String steps = "123,123,123";

  ImageLikedProfileAndInfo(this.pathImage, this.title, this.description, this.steps);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ImageLikedProfile(pathImage),
        Container(
          alignment: Alignment(0.0,-1.0),
          padding: EdgeInsets.only(
            top: 80,
          ),
          child: ImageLikedInfo(title, description, steps),

        )

      ],

    );

  }



}