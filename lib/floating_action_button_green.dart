import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  IconData iconFav = Icons.favorite_border;
  bool stateOfFav = false;
  String messageForUser = "Agregaste a tus favoritos";



  void onPressedFav() {

    setState( () {
      if (stateOfFav) {
        iconFav = Icons.favorite_border;
        stateOfFav = false;
      }
      else {
        iconFav = Icons.favorite;
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
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: "Fav",
        // en el caso que sea apachado se ejecuta el metodo onpressedFav
        child: Icon(
          iconFav
        ),
      onPressed: onPressedFav,
    );
  }

}