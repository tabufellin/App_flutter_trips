import 'package:flutter/material.dart';

class CalendarActionButtonWhity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CalendarActionButtonWhity();
  }

}

class _CalendarActionButtonWhity extends State<CalendarActionButtonWhity> {

  IconData iconFav = Icons.calendar_today;
  bool stateOfFav = false;
  Color colorChoosen = Color(0xFFB3B3B3);
  String messageForUser = "Agregaste a tus favoritos";



  void onPressedFav() {

    setState( () {
      if (stateOfFav) {
        colorChoosen = Colors.white;
        stateOfFav = false;
      }
      else {
        colorChoosen = Color(0xFFB3B3B3);
        stateOfFav = true;
      }

    });

    if (stateOfFav) {
      messageForUser = "Agregaste a tus favoritos";

    }
    else {
      messageForUser = "Eliminaste de tus favoritos";
    }

    Scaffold.of(context)
        .showSnackBar( // snackbar es parecido a un Toast pero por abajo.
        SnackBar(
          content: Text(messageForUser),
        )
    );



  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(
            left: 30.0,
            right: 30.0,
            bottom: 30.0,
            top: 2.0
        ),
        child: FloatingActionButton(
          backgroundColor: colorChoosen,
          mini: true,
          tooltip: "Fav",
          // en el caso que sea apachado se ejecuta el metodo onpressedFav
          child: Icon(
            iconFav,
            color: Color(0xFF584CD1),
          ),
          onPressed: onPressedFav,
        )

    );


  }

}