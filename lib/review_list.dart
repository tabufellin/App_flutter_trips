import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        new Review("asset/img/people.jpg", "Jorge Perez", "1 review 5 photos", "Really Cool"),
        new Review("asset/img/girl.jpeg", "Elisa Juarez", "1 review 5 photos", "Awesome"),
        new Review("asset/img/girl2.jpg", "Karina de La Roca", "1 review 5 photos", "Esta chido")
      ],
      crossAxisAlignment: CrossAxisAlignment.start,


    );
  }


}