import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/Disease.dart';
import 'package:fruit_diseases/models/product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_diseases/models/wholeDiseasesList.dart';
import 'package:fruit_diseases/screens/diseaseDetails/disease_screen.dart';

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
      child: Column(
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
           /* decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0.0,2.0),
                  )
                ]
            ),*/


            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             /*  Center(child: Hero(
                tag: '${product.id}',

                child: ProductImage(size: size, product: product))),
                ListOfColors(),*/
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:kDefaultPadding/4),
                  child: Text(product.title,style:Theme.of(context).textTheme.headline6),
                ),
                Text("${product.scientificName}",
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
            ),
          ),

        // ChatAndCart(),
          Expanded(
            child: SizedBox(
              height: 200.0,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: diseasesLists.length,
                itemBuilder: (context,index){
                  print(diseasesLists[index].stage);
                  return Container(

                      padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2,horizontal: kDefaultPadding),
                      margin: EdgeInsets.all(kDefaultPadding/2),
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(30),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric( vertical: kDefaultPadding/2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('May Appear during',style: Theme.of(context).textTheme.bodyText1,),
                            Text('${diseasesLists[index].stage} Stage',style: Theme.of(context).textTheme.headline5),
                           Container(
                             height: 350,
                             decoration: BoxDecoration(
                              // color: Colors.grey
                             ),
                             child: test(diseasesLists[index].wholeDiseasesList),
                           ),

                            GestureDetector(
                              onTap: ()=>print('show more'),
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding *2),
                                decoration: BoxDecoration(

                                  border: Border.all(color: kSecondaryColor),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(child: Text('Show More',style: TextStyle(
                                  fontFamily: 'DancingScript',
                                  fontSize: 20,
                                  color: kSecondaryColor,
                                  fontWeight: FontWeight.bold,

                                ),)),
                              ),
                            )


                          ],
                        ),
                      )
                  );
                },

              ),
            ),
          ),

        ],
      ),
    );
  }
  test(List<Disease> disease){
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: disease.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical:8),
          child: GestureDetector(
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DiseaseScreen(disease: disease[index],);
            }));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 130,
                  decoration: BoxDecoration(
                    //color: Colors.deepOrange
                  ),
                  child: Image.asset(disease[index].image, fit: BoxFit.cover,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(disease[index].diseasesName,style: TextStyle(
                      fontFamily: "Ubuntu",
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold
                    ),
                    overflow: TextOverflow.ellipsis,
                    ),
                    Text(disease[index].category,),

                  ],
                ),
                Icon(FontAwesomeIcons.angleRight),
              ],
            ),
          ),
        );

      },
    );
  }
}
