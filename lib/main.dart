import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button.dart';

void main(){
  runApp(_Myapps());
}

class _Myapps extends StatelessWidget{
  _Myapps({super.key});

  @override
  Widget build(BuildContext Context){
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Achivemeen(),
    );
  }

}
class Achivemeen extends StatelessWidget{
  Achivemeen({super.key});
  @override
  Widget build(BuildContext Context){
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text('NewApps'),
      ),
        backgroundColor: Colors.amber,
        elevation: 100,
        toolbarHeight: 60,
        centerTitle: true,

      ),
      body: Container(
        child:
      ),)
  }
}



