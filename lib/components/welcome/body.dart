import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/welcome/background.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      return new Background(
        child: new SingleChildScrollView(
          child: new Column(
            children: [
              new Text("Welcome To App2",style: TextStyle(fontWeight: FontWeight.bold),),
              new SizedBox(height: size.height*0.05,),
              SvgPicture.asset("assets/icons/chat.svg",
              height: size.height * 0.45,
              )
            ],
          ),
        ),
      );
  }

}