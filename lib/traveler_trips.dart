import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trip.dart';
import 'package:platzi_trips_app/profile_trips.dart';
import 'package:platzi_trips_app/search_trips.dart';

class TravelerTrips extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TravelerTrips();
  }



}

class _TravelerTrips extends State<TravelerTrips> {

  // contador para ver en que indice estamos de la app
  int indexTap = 0;

  // vamos a poner en forma de arreglo las vistas que vamos a ir mostrando cada
  //vez que alguien le de tap a cada cosa
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];



  void onTapTapped (int index) {
    // va a cambiar el estado del Statefull widget el setState
    setState(() {
      indexTap = index;
    });

  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap] ,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith( //este data, lo metemos si le queremos hacer
          canvasColor: Colors.white,      // modificionaciones visuales a la navegation bar
          primaryColor: Colors.purple,

        ),
        child: BottomNavigationBar(

          //cuando alguien le de click que pasara indica el onTap
          onTap: onTapTapped,

          // la siguiente propiedad quiere decir algo como:
          // " el indice que quiero que este en este momento..."
          // (indexTap es nuestro contador)
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(""),
            )
          ],
        ),
      ),
    );
  }

}