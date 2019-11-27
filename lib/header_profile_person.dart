import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HeaderProfilePerson extends StatelessWidget {

  String pathImage;
  String name;
  String email;

  HeaderProfilePerson(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
      ),

      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2.0, style: BorderStyle.solid),
          shape: BoxShape.circle, // esto le da la forma de circulo
          image: DecorationImage (
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          color: Colors.white
      ),

    );

    final infoPerson = Container(
      margin: EdgeInsets.only(
        left: 10.0
      ),
      child: Column(
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontFamily: "Lato-Regular",
              fontSize: 18.0,
              color: Colors.white
            ),
          ),
          Text(
            email,
            style: TextStyle(
              fontFamily: "Lato-Regular",
              fontSize: 15.0,
              color: Colors.white30
            ),
          )
        ],
      ),
    );
    // TODO: implement build

    return Container(
      child: Row(
        children: <Widget>[
          photo,
          infoPerson
        ],
      ) ,
    );


  }

}