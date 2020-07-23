import 'package:flutter/material.dart';
import 'package:fruit_diseases/models/product.dart';

import '../../../constants.dart';
class FlexibleAppBar extends StatefulWidget {
  final Product product;
  FlexibleAppBar({this.product});
  @override
  _FlexibleAppBarState createState() => _FlexibleAppBarState();
}

class _FlexibleAppBarState extends State<FlexibleAppBar> {

  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size.width;
    return     Container(
      height: size,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomRight:Radius.circular(30) ,
          bottomLeft: Radius.circular(30),
        ),
        boxShadow: [BoxShadow(
          color: kPrimaryColor,
            spreadRadius: 15,
            offset: Offset(0.0, 2.0),
          blurRadius: 6,
        )],

      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,

            child: ClipRRect(borderRadius: BorderRadius.circular(30),child: Image.asset(widget.product.image,fit: BoxFit.cover,)),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.product.title,style:Theme.of(context).textTheme.headline6),
                Text("${widget.product.scientificName}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Pacifico",
                      fontSize: 18,
                      letterSpacing: 1,
                      color: kSecondaryColor),),
              ],
            )
          )

        ],
      ),











    /*  height: size,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomRight:Radius.circular(50) ,
          bottomLeft: Radius.circular(50),
        ),

      ),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Padding(
            padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/4),
            child: Text(widget.product.title,style:Theme.of(context).textTheme.headline6),
          ),
          Text("${widget.product.scientificName}",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: "Pacifico",
                fontSize: 18,
                letterSpacing: 1,
                color: kSecondaryColor),),
          /*    Padding(
                  padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/4),
                  child: Text(product.description,style: TextStyle(color: kTextLightColor),),
                ),*/
          SizedBox(height: kDefaultPadding,)
        ],
      ),*/
    );
  }
}
