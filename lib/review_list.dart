import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {

  List<Review> reviewSelected;

  ReviewList(this.reviewSelected);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        reviewSelected[0],
        reviewSelected[1],
        //reviewSelected[2]
      ],


    );
  }


}