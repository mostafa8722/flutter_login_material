import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constans/colors.dart';

class OrDivider extends StatelessWidget {


        @override
  Widget build(BuildContext context) {
    // TODO: implement build
          Size size = MediaQuery.of(context).size;

     return new Container(
       width: size.width*0.8,
       child: new Row(
         children: [
           buildDivider(),
           new Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10),
             child: new Text(
               "OR",
               style: TextStyle(color: MaterialColors.kPrimaryColor,fontWeight: FontWeight.w600),

             ),
           ),
           buildDivider()
         ],
       ),
     );
  }

  Expanded buildDivider(){
          return new Expanded(
              child:new Divider(
                height: 1.5,
                color: new Color(0xFFD9D9D9),
              )
          );
  }
  }