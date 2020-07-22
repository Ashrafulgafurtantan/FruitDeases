import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/product.dart';
import 'package:fruit_diseases/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
 final Product product;
  DetailsScreen({this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
     appBar: buildAppBar(context),
      body: Body(product:product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
     backgroundColor: kBackgroundColor,
     elevation: 0,
     leading: IconButton(icon:SvgPicture.asset('assets/icons/back.svg'),
      onPressed: ()=>Navigator.pop(context),
      padding: EdgeInsets.only(left: kDefaultPadding),
     ),
     centerTitle: false,
     title: Text("BACK",style: Theme.of(context).textTheme.button,),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/cart_with_item.svg"),
        onPressed: ()=>print('Cart'),
      )
    ],

   );
  }
}
