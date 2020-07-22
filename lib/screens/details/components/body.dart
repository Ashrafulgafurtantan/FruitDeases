import 'package:flutter/material.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/product.dart';

import 'chat_and_add_to_cart.dart';

import 'list_of_colors.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
 final Product product;
  Body({this.product});
  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size.width;
    return SafeArea(
      bottom: false,
      child: ListView(
        children: <Widget>[
          Container(
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
                Center(child: Hero(
                tag: '${product.id}',

                child: ProductImage(size: size, product: product))),
                ListOfColors(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/2),
                  child: Text(product.title,style:Theme.of(context).textTheme.headline6),
                ),
                Text("\$${product.price.toString()}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: 1,
                    color: kSecondaryColor),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/2),
                  child: Text(product.description,style: TextStyle(color: kTextLightColor),),
                ),
                SizedBox(height: kDefaultPadding,)
              ],
            ),
          ),

          ChatAndCart(),

        ],

      ),
    );
  }
}
