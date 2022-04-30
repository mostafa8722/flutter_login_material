
import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/general/roundedButton.dart';
import 'package:flutter_login_material/components/general/roundedInputField.dart';
import 'package:flutter_login_material/components/general/roundedPasswordField.dart';
import 'package:flutter_login_material/components/signUp/socialIcon.dart';
import 'package:flutter_login_material/components/signup/background.dart';
import 'package:flutter_login_material/screens/loginScreen.dart';
import 'package:flutter_login_material/screens/signUpScreen.dart';
import 'package:flutter_svg/svg.dart';

import '../general/already_have_an_account_acheck.dart';
import 'orDivider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return new Background(

      child: SingleChildScrollView(
        child: new Column(
          children: [
            Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.03,),
            SvgPicture.asset("assets/icons/signup.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height*0.03,),
            RoundedInputField(
              hintText: "Your Email",
              icon: Icons.person,
              onChange: (value){},
            ),
            RoundedPasswordField(
              onChange: (value){},
            ),
            RoundedButton(
              text: "Sign Up",
              press: (){},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return LoginScreen();
                    })
                );
              },

            ),

           new Padding(
             padding: const EdgeInsets.symmetric(vertical: 15),
             child:  OrDivider(),
           ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new SocialIcon(
                  src:  "assets/icons/facebook.svg",
                  press: (){},
                ),
                new SocialIcon(
                  src:  "assets/icons/twitter.svg",
                  press: (){},
                ),
                new SocialIcon(
                  src:  "assets/icons/google-plus.svg",
                  press: (){},
                )
              ],
            )

          ],
        ),
      ),
    );
  }

}