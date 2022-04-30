

  import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/general/text_field_container.dart';

import '../../constans/colors.dart';

  class RoundedPasswordField extends StatelessWidget{


    final onChange ;
    RoundedPasswordField({Key key,this.onChange}):super(key: key);

    @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TextFieldContainer(
      child:new TextField(
        obscureText: true,
        onChanged: onChange,
        cursorColor: MaterialColors.kPrimaryColor,
        decoration: InputDecoration(
          hintText: "password",
          icon: new Icon(
            Icons.lock,
            color: MaterialColors.kPrimaryColor,
          ),suffixIcon: Icon(
          Icons.visibility,
          color: MaterialColors.kPrimaryColor,
        ),
          border: InputBorder.none
        ),
      ) ,
    );
  }

  }