import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
class ChatAndCart extends StatelessWidget {
  const ChatAndCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding/2,horizontal: kDefaultPadding),
      margin: EdgeInsets.all( kDefaultPadding),
      decoration: BoxDecoration(
        color: Color(0xfffcbf1e),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset('assets/icons/chat.svg',height: 18,),
          SizedBox(width: kDefaultPadding/2,),
          Text('Chat',style: TextStyle(
            color: Colors.white,
          ),),
          Spacer(),
          FlatButton.icon(onPressed:()=>print('bag') ,
            icon: SvgPicture.asset('assets/icons/shopping-bag.svg',
              height: 18,
            ),
            label: Text('Add To Cart',style: TextStyle(
                color: Colors.white
            ),),)

        ],
      ),
    );
  }
}
