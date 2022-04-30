

  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constans/colors.dart';

class SocialIcon extends StatelessWidget{
  String src;
  Function press;
  SocialIcon({
    Key key,
    this.src,
    this.press
}): super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: press,
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: new BoxDecoration(
          border: Border.all(width: 2,color: MaterialColors.kPrimaryLightColor),
          shape: BoxShape.circle
        ),

        child: SvgPicture.asset(src,height: 20,width: 20,),
      ),
    );
  }

}