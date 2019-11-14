import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientBack extends StatelessWidget {

  String title = "Popular";

  GradientBack(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3), // VA DEL TONO MAS CLARO AL MAS OSCURO
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2, 0.0), // que tanto quiero que un color traslape con el otro
          end: FractionalOffset(1.0,0.6), //hasta donde quiero que llegue el color mas oscuro
            stops: [0.0, 0.6], // orientacion del gradiente, de arriba a abajo, de izquierda a derecha o como
            tileMode: TileMode.clamp // color de relleno mientras no carga o que pedo


        )
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize:  30.0,
          fontFamily: "Lato-Regular",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: Alignment(-0.9, -0.6)
    );
  }

}