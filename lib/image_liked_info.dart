import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

// ignore: must_be_immutable
class ImageLikedInfo extends StatelessWidget {

  String title = "Casa del lago";
  String activities = "Relax, chill, long walkings";
  String steps = "123,123,123";

  ImageLikedInfo(this.title, this.activities, this.steps);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        height: 100.0,
        width: 320.0,
        margin: EdgeInsets.only(
            top: 120.0,
            left: 20.0,
            right: 20.0
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(17.0),
              topRight: Radius.circular(17.0)
            ),
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow> [
              BoxShadow (
                  color: Colors.black38,
                  blurRadius: 5.0, //que tan degradado
                  offset: Offset (0, 3)
              )
            ]
        ),
        child: Stack(
           // alignment: Alignment(0.9,1.1),
            children: <Widget>[
                Column(
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 15.0,
                        left: 20.0,
                        right: 30.0,
                        bottom: 7.0
                      ),
                      child: Text(
                                title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Lato-Regular",
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0
                                ),
                              )
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 25.0,
                        bottom: 10.0,
                      ),
                      child: Text(
                        activities,
                        style: TextStyle(
                            color: Colors.black38,
                            fontFamily: "Lato-Regular",
                            fontWeight: FontWeight.w500,
                            fontSize: 10
                        ),
                      ) ,
                    ),

                    Container(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 30.0,
                        bottom: 10.0
                      ),
                      child: Text(
                        "Steps $steps",
                        style: TextStyle(
                            color: Colors.orange,
                            fontFamily: "Lato-Regular",
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment(0.9,1.25),
                  child: FloatingActionButtonGreen()

                )
               // FloatingActionButtonGreen()

            ]
        )
    );


  }

}