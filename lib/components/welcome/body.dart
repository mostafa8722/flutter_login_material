import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/general/roundedButton.dart';
import 'package:flutter_login_material/components/welcome/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constans/colors.dart';
import '../../screens/loginScreen.dart';
import '../../screens/signUpScreen.dart';


class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      return new Background(
        child: new SingleChildScrollView(
          child: new Column(
            children: [
              new Text("Welcome To App",style: TextStyle(fontWeight: FontWeight.bold),),
              new SizedBox(height: size.height*0.05,),
              SvgPicture.asset("assets/icons/chat.svg",
              height: size.height * 0.45,
              ),
              new SizedBox(height: 20,),
              RoundedButton(
                text: "Login",
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return LoginScreen();
                  }) );
                },
              ),

              RoundedButton(
                text: "Sign Up",
                press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUpScreen();
                }) );
                },
                color: MaterialColors.kPrimaryLightColor,
                textColor: Colors.black,
              )
            ],
          ),
        ),
      );
  }

}