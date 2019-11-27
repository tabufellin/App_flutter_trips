import 'package:flutter/material.dart';

class ProfileHeaderTop extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 25.0,
            top: 40.0
          ),
          child: Text(
            "Profile",
            style: TextStyle(
                fontSize: 34.0,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          )
        ),

        Container(
          margin: EdgeInsets.only(
            left: 230,
            right: 20.0,
            top: 40.0
          ),
          child: Icon(
            Icons.edit,
            size: 17,
            color: Colors.white,
          ),
        ),

      ],

    );
  }

}