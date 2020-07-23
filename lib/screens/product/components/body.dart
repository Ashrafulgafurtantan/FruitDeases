import 'package:flutter/material.dart';

import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/product.dart';
import 'package:fruit_diseases/screens/details/details_screen.dart';
import 'package:fruit_diseases/screens/product/components/product_card.dart';
import 'category_list.dart';
import 'search_box.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List categories = ['All', 'Fruits','Flowers','Vegetables',];

  int selectedIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value){


          },),
          //  CategoryList(),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: kDefaultPadding *1.2,
                    // At end item it add extra 20 right  padding
                    right: index == categories.length - 1 ? kDefaultPadding : 0,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  decoration: BoxDecoration(
                    color: index == selectedIndex
                        ? Colors.white.withOpacity(0.4)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    categories[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
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
                    print(selectedIndex);
                    if(selectedIndex == 0){
                      return  ProductCard(index: index,product: products[index],
                        press: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return DetailsScreen(product: products[index],);
                              }));

                        },
                      );
                    }else if(selectedIndex ==1){
                      return products[index].category =="Fruit"?  ProductCard(index: index,product: products[index],
                        press: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return DetailsScreen(product: products[index],);
                              }));

                        },
                      ):Container();
                      // Container(child: Center(child: Text('No result Found')),);

                    }
                    else if(selectedIndex ==2){
                      return products[index].category =="Flower"?  ProductCard(index: index,product: products[index],
                        press: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return DetailsScreen(product: products[index],);
                              }));

                        },
                      ): Container();

                    } else if(selectedIndex ==3){
                      return products[index].category =="Vegetable"?  ProductCard(index: index,product: products[index],
                        press: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context){
                                return DetailsScreen(product: products[index],);
                              }));

                        },
                      ):Container();
                    }
                     return Container(child: Center(child: Text('Nothing Found')),);
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

