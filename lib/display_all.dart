import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/review_list.dart';
import 'review.dart';

class DisplayAll extends StatelessWidget {

  List<Review> list = [new Review("asset/img/people.jpg", "Jorge Perez", "1 review 5 photos", "Really Cool"), new Review("asset/img/people.jpg", "Jorge Perez", "1 review 5 photos", "Really Cool"), new Review("asset/img/people.jpg", "Jorge Perez", "1 review 5 photos", "Really Cool")];

  DisplayAll();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column (
      children: <Widget>[
        DescriptionPlace("Duwili palii", 5, "Is a beatigul ff jfñljs fdjsñal fjdñlfjslf sñ fd fsdñlfj"),
        ReviewList(list)
      ],
    );
  }

}