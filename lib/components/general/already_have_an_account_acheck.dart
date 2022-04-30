
  import 'package:flutter/material.dart';

import '../../constans/colors.dart';

class AlreadyHaveAnAccountCheck  extends StatelessWidget {
  final bool login;
  final press;
  AlreadyHaveAnAccountCheck({Key key,this.login,this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        new Text(
          login? "Don’t have an Account ?" : "Already have an Account ?",
          style: TextStyle(color: MaterialColors.kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child:    new Text(
            login? "Sign Up" : "Login",
            style: TextStyle(color: MaterialColors.kPrimaryColor,fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

}