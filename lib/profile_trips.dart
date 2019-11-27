 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:platzi_trips_app/list_image_liked_profile_and_info.dart';
import 'header_profile.dart';


class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        HeaderProfile(),
        Container(
          padding: EdgeInsets.only(
            top: 240
          ),
          child: ListImageLikedProfileAndInfo(),
        )

      ],
    );
  }

}