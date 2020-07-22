import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_diseases/components/search_box.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/product.dart';
import 'package:fruit_diseases/screens/details/details_screen.dart';
import 'package:fruit_diseases/screens/product/components/product_card.dart';
import 'category_list.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value){},),
          CategoryList(),
          SizedBox(height: kDefaultPadding/2,),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
            margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),

                    )
                  ),
                ),

              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (context,index){
                  return ProductCard(index: index,
                    product: products[index],
                    press: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return DetailsScreen(product: products[index],);
                      }));

                    },
                  );
                },
              )
              ],
            ),
          )
        ],
      ),
    );
  }


}
