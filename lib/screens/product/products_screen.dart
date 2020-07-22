import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/screens/product/components/body.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body()


    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Dashboard"),
      centerTitle: false,
      actions: <Widget>[
        IconButton(icon:SvgPicture.asset('assets/icons/notification.svg') ,

            onPressed: ()=>print('Notifications'))
      ],
    );
  }
}
