

import 'package:flutter/material.dart';
import 'package:flutter_login_material/components/general/text_field_container.dart';

import '../../constans/colors.dart';

class RoundedInputField extends StatelessWidget {

  final String hintText;
  final Function onChange;
  final icon;

  RoundedInputField({Key key,
  this.hintText, this.icon,this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFieldContainer(
      child: new TextField(
        onChanged: onChange,
        cursorColor:MaterialColors.kPrimaryLightColor ,
        decoration: new InputDecoration(
          icon: new Icon(icon,color: MaterialColors.kPrimaryColor,),
          hintText: hintText,
          border: InputBorder.none
         
        ),
      ),

    );
  }

}