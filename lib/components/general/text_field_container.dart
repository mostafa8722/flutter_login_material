  import 'package:flutter/material.dart';

import '../../constans/colors.dart';

class TextFieldContainer extends StatelessWidget{

    final Widget child;
    TextFieldContainer({Key key,this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      width: size.width*0.8 ,
      decoration: new BoxDecoration(
        color: MaterialColors.kPrimaryLightColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: child,

    );
  }

}