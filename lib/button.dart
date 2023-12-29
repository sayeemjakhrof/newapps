
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttom extends StatelessWidget{
  final String title;
  Buttom(this.title);
  @override
  Widget build(BuildContext Context){
    return Center(
      child: Row(
        //decoration: BoxDecoration(shape: BoxShape.rectangle,),
       children: [
         TextButton(onPressed: (){print("on");}, child: Text(title),)],
      ),
    );

  }
}