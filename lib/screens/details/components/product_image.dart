import 'package:flutter/material.dart';
import 'package:fruit_diseases/models/product.dart';

import '../../../constants.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    @required this.size,
    @required this.product,
  }) : super(key: key);

  final double size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size*0.8,
      //   color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size*0.7,
            width: size*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),

          ),
          Image.asset(product.image,
            height: size*0.75,
            width: size*0.75,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
