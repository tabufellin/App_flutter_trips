import 'package:flutter/material.dart';
import 'package:platzi_trips_app/add_action_button_whity.dart';
import 'package:platzi_trips_app/bookmark_action_button_whity.dart';
import 'package:platzi_trips_app/calendar_action_button_whity.dart';
import 'package:platzi_trips_app/email_action_button_whity.dart';
import 'package:platzi_trips_app/person_action_button_whity.dart';

class ToolBarAllProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          BookmarkActionButtonWhity(),
          CalendarActionButtonWhity(),
          AddActionButtonWhity(),
          EmailAcctionButtonWhity(),
          PersonActionButtonWhity()



        ],
      ),
    );
  }

}
