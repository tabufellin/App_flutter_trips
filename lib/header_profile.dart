import 'package:flutter/material.dart';
import 'package:platzi_trips_app/header_profile_person.dart';
import 'package:platzi_trips_app/profile_header_top.dart';
import 'package:platzi_trips_app/tool_bar_all_profile.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          height: 300.0,
          decoration: BoxDecoration(
            color: Color(0xFF4268D3),
              //tileMode: TileMode.clamp,// orientacion del gradiente, de arriba a abajo, de izquierda a derecha o como
           ),
          )
         ,
        Container(
            height: 500.0,
            margin: EdgeInsets.only(
            ),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0x77584CD1), // VA DEL TONO MAS CLARO AL MAS OSCURO
                  Color(0x00584CD1)
                ],
                stops: [2,2],
                //tileMode: TileMode.clamp,// orientacion del gradiente, de arriba a abajo, de izquierda a derecha o como
                center: Alignment(0.75,-0.18) , // color de relleno mientras no carga o que pedo
              ),
            )
        ),
        Container(
          height: 300.0,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          margin: EdgeInsets.only(
            top: 300.0
          ),
        ),
        Column(
          children: <Widget>[
            ProfileHeaderTop(),
            HeaderProfilePerson("asset/img/girl2.jpg", "Karina De La Roca", "dela18588@uvg.edu.gt"),
            ToolBarAllProfile()
          ],
        )

      ],

    );
  }

}