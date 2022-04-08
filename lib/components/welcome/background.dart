import 'package:flutter/material.dart';

class Background extends StatelessWidget{
  final Widget child;
   Background({
    Key key,
    @required this.child
}):super(key: key);

@override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return new Container(
      height: size.height,
      width: double.infinity,
      child: new Stack(
        alignment: Alignment.center,
        children: [
          new Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png",
            width: size.width*0.3,
            ),
          ),
          new Positioned(
            bottom: 0,
            left: 0,
            child: new Image.asset("assets/images/main_bottom.png",
              width: size.width*0.2,),
          ),
          child
        ],

      ),
    );
  }
}