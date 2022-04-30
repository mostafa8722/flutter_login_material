
  import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/general/roundedButton.dart';
import 'package:flutter_login_material/components/general/roundedInputField.dart';
import 'package:flutter_login_material/components/general/roundedPasswordField.dart';
import 'package:flutter_login_material/components/login/background.dart';
import 'package:flutter_login_material/screens/signUpScreen.dart';
import 'package:flutter_svg/svg.dart';

import '../general/already_have_an_account_acheck.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

       Size size = MediaQuery.of(context).size;

      return new Background(

        child: SingleChildScrollView(
          child: new Column(
            children: [
              Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: size.height*0.03,),
              SvgPicture.asset("assets/icons/login.svg",
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
                text: "Login",
                press: (){},
              ),
              AlreadyHaveAnAccountCheck(
                login: true,
                press: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return SignUpScreen();
                  })
                  );
                },

              )

            ],
          ),
        ),
      );
  }

}