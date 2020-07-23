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

import 'flexible_app_bar.dart';
import 'list_of_colors.dart';
import 'product_image.dart';

class Body extends StatefulWidget {
  final Product product;
  Body({this.product});
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  ScrollController _scrollController,scrollControllerListView;
  double beforePosition=0.0,afterPosition=0.0;


  bool expanded=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollControllerListView = ScrollController();
    scrollControllerListView.addListener(() {
      setState(() {
        afterPosition = scrollControllerListView.position.pixels;

      });
    });
    _scrollController = ScrollController()..addListener((){
      if(_isAppBarExpanded){
        //   print('not expaded');
        setState(() {
          expanded =false;
        });

      }else{
        //   print('expanded');
        setState(() {
          expanded=true;
        });
      }
    });
  }
  bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    var size =  MediaQuery.of(context).size.width;
    return CustomScrollView(
      controller: _scrollController,
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: kBackgroundColor,
            elevation: 0,
            leading: IconButton(icon: Icon(FontAwesomeIcons.arrowLeft,
              size: 20,
              color: Colors.black ,
            ),
                onPressed: ()=>Navigator.pop(context)),
            pinned: true,
            expandedHeight: size-afterPosition,
            flexibleSpace: FlexibleSpaceBar(
              background: FlexibleAppBar(product: widget.product,) ,
            )
        ),

        SliverList(
          delegate:SliverChildListDelegate(
            <Widget> [
              //   Column(
              //  children: <Widget>[
              NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification notification) {
                  if (notification is ScrollStartNotification) {
                    print('is scrolling');
                    print(scrollControllerListView.position.pixels);
                    print( "lol ${_scrollController.offset}");
                    beforePosition=afterPosition;
                  }
                  print('secnd pixel =${scrollControllerListView.position.pixels}');
                  setState(() {
                    afterPosition = scrollControllerListView.position.pixels;

                  });


                  // Returning null (or false) to
                  // "allow the notification to continue to be dispatched to further ancestors".
                  return null;
                },
                child: Container(
                  height: 700,
                  child:ListView.builder(
                    controller: scrollControllerListView,
                    physics: AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: diseasesLists.length,
                    itemBuilder: (context,index){
                      //   print(diseasesLists[index].stage);
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
              )
              //   ],
              //  ),

            ],
          ),
        ),

      ],

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

