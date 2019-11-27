import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageLikedProfile extends StatelessWidget {

  String pathImage = "asset/img/lago.jpg";

  ImageLikedProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 235.0,
      width: 400.0,
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, // para que se ajuste la imagen y no se vea cortada
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow> [
            BoxShadow (
                color: Colors.black38,
                blurRadius: 5.0, //que tan degradado
                offset: Offset (0, 3)
            )
          ]

            )
      );


  }

}