import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:fruit_diseases/models/Disease.dart';

import 'components/my_flexible_app_bar.dart';


class DiseaseScreen extends StatefulWidget {
  final Disease disease;
  DiseaseScreen({this.disease});
  @override
  _DiseaseScreenState createState() => _DiseaseScreenState();
}

class _DiseaseScreenState extends State<DiseaseScreen> {
  ScrollController _scrollController;

  bool expanded=true;
  bool preventionShowMoreFlag  =false;
  bool causeShowMoreFlag = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController = ScrollController()
      ..addListener((){
        if(_isAppBarExpanded){
          print('not expaded');
          setState(() {
            expanded =false;
          });

        }else{
          print('expanded');
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

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
              backgroundColor: kBackgroundColor,
              leading: IconButton(icon: Icon(FontAwesomeIcons.arrowLeft,
                size: 20,
                color:expanded ? Colors.white : Colors.black,
              ),
               onPressed: ()=>Navigator.pop(context)),
              centerTitle: true,
              title: expanded? Text(''):Text(widget.disease.diseasesName,style:TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Ubuntu',color: Color.fromRGBO(227, 99, 135, 1)

              ),),
              actions: <Widget>[
                expanded ? Container():Container(
                    alignment: Alignment.center,
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.deepOrange),
                      color: kBackgroundColor,
                    ),
                    child: Container(
                      height:37,
                      width: 37,
                      decoration: BoxDecoration(
                        //  color: Colors.yellowAccent,
                      ),
                      child: Image.asset('assets/images/mango_animation.png',fit: BoxFit.cover,),
                    )
                ),
              ],

              pinned: true,
              expandedHeight: MediaQuery.of(context).size.width*.85,
              flexibleSpace:FlexibleSpaceBar(background: MyFlexibleAppBar(disease:widget.disease),)


          ),
          SliverList(
            delegate:SliverChildListDelegate(
              <Widget> [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2,vertical: kDefaultPadding/2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                Text(widget.disease.category,style:TextStyle(fontSize: 16,color: Colors.grey),),
                                Text(widget.disease.diseasesName,style:TextStyle(fontSize: 22,color: Colors.black),),
                                Text(widget.disease.diseasesScientificName,style:TextStyle(
                                  fontSize: 16,
                                  color:kSecondaryColor,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Ubuntu',

                                ),),

                              ],
                            ),
                          ),
                          IconButton(
                              icon: Icon(FontAwesomeIcons.whatsapp,size: 33,color: Colors.green,),
                              onPressed: ()=>print('whatsapp'))
                        ],
                      ),
                      //SizedBox(height: 5,),
                      Divider(),
                      Text('Symptoms',style: Theme.of(context).textTheme.headline5,),
                      SizedBox(height: 3,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:widget.disease.symptoms.asMap()
                            .entries.map((MapEntry map) => Text('* ${map.value}',)).toList(),
                      ),
                      Divider(),
                      Text('Preventions',style: Theme.of(context).textTheme.headline5,),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: widget.disease.prevention.asMap()
                                  .entries.map((MapEntry map) {
                                    if(preventionShowMoreFlag){
                                      return Text('* ${map.value}');
                                    }else{
                                      return map.key<2 ? Text('* ${map.value}') : Container();
                                    }
                                  } ).toList(),
                            ),
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  preventionShowMoreFlag=!preventionShowMoreFlag;
                                });
                              },
                              child: Text( preventionShowMoreFlag ? 'Show Less': 'Show More',
                                style: TextStyle(color: Colors.blue,fontFamily: 'DancingScript',fontSize: 18),),
                            ),

                          ],
                        ),
                      ),
                      Divider(),
                      Text('Reason Of Caused',style: Theme.of(context).textTheme.headline5,),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,

                          children: <Widget>[
                         causeShowMoreFlag ?  Text('${widget.disease.reasonOfCaused}') :Text('${widget.disease.reasonOfCaused.substring(0,100)}. . . .'),
                            GestureDetector(
                                onTap: (){
                                  setState(() {
                                    causeShowMoreFlag=!causeShowMoreFlag;
                                  });
                                },
                              child: Text(causeShowMoreFlag ? 'Show Less': 'Show More',
                                style: TextStyle(color: Colors.blue,fontFamily: 'DancingScript',fontSize: 18),))
                          ],
                        ),
                      )


                    ],
                  ),
                ),
                Divider(),
                SizedBox(height: 5,),
              ],),
          ),
        ],
      ),
    );
  }
}
