import 'package:flutter/material.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/Disease.dart';

class MyFlexibleAppBar extends StatefulWidget {
  final Disease disease;
  MyFlexibleAppBar({this.disease});
  @override
  _MyFlexibleAppBarState createState() => _MyFlexibleAppBarState();
}

class _MyFlexibleAppBarState extends State<MyFlexibleAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(

        child: Stack(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: Image.asset(widget.disease.image,fit: BoxFit.cover,),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  border: Border.all(color: Colors.deepOrange),

                  color: kBackgroundColor,

                ),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                  //  color: Colors.yellowAccent,
                  ),
                  child: Image.asset('assets/images/mango_animation.png',fit: BoxFit.cover,),
                )
              ),
            )

          ],
        ),
    );
  }
}
