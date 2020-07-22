
import 'package:flutter/material.dart';
import 'package:fruit_diseases/models/product.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  final int index;
  final Product product;
  final Function press;

  ProductCard({
    this.product,this.index,this.press
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding/2,
      ),
      decoration: BoxDecoration(
        //  color: Colors.blue,
      ),
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              decoration:BoxDecoration(
                  color:index.isEven ? kBlueColor : kSecondaryColor,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [kDefaultShadow]
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22)
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 160,
                  width: 180,
                  child:
                  Image.asset(product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,

              child: SizedBox(

                height: 136,
                width: MediaQuery.of(context).size.width-200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(product.title,
                          style: Theme.of(context).textTheme.button
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical:  kDefaultPadding /4,
                      ),
                      child: Text('\$${product.price.toString()}',
                        style:Theme.of(context).textTheme.button ,),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight:  Radius.circular(22),
                        ),

                      ),
                    )
                  ],
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}