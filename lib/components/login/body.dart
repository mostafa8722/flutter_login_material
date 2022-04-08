
  import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/login/background.dart';
import 'package:flutter_svg/svg.dart';

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
              
            ],
          ),
        ),
      );
  }

}