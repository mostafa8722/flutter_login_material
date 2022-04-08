import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_material/constans/colors.dart';

class RoundedButton extends StatelessWidget{
   final String text ;
   final press;
   final Color color,textColor;

          RoundedButton({Key key,
            this.text,
            this.press,
            this.color=MaterialColors.kPrimaryColor,
            this.textColor = Colors.white
          }):super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: elementButton(),
      ),
    );
  }
  Widget elementButton(){
    return new ElevatedButton(
        onPressed: press,
        child: new Text(text,style: TextStyle(color: textColor),),
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
        textStyle: TextStyle(
          color: textColor,fontSize: 14,fontWeight: FontWeight.w500
        )
      ),
    );
  }
}