import 'package:flutter/material.dart';
import 'main.dart';
class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
 const  Button({super.key,required this.title,this.color=const Color(0xffa5a5a5,),required this.onpress});

  @override
  Widget build(BuildContext context) {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: onpress,
            child: Container(
              height: 80,
              // color: Colors.pink,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:color
              ),
              child: Center(
                child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w800),),
              ),
            ),
          ),
        ),
      );
  }
}


