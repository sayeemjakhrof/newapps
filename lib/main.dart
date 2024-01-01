import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapps/ui/ui.dart';

void main(){
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  MyApps({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'class defination',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 30),
          titleSmall: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      home: TextThemeData(),
    );
  }
}

class TextThemeData extends StatelessWidget {
  TextThemeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('TextThemeData', style: Theme.of(context).textTheme.titleLarge),
      ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  height: 100,
                    width: 200,
                    child: Center(
                        child: Text('Hello Flutter', style: TxtSize11(fontWeight: FontWeight.bold, textColor: Colors.grey),),
                    ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  height: 100,
                    width: 200,
                    child: Center(
                        child: Text('Hello Flutter',style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.blue, fontSize: 30),),
                    ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  height: 100,
                    width: 200,
                    child: Center(
                        child: Text('Hello Flutter', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.amber, fontSize: 30),),
                    ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  height: 100,
                    width: 200,
                    child: Center(
                        child: Text('Hello Flutter', style: TxtSize11(fontSize: 30, fontWeight: FontWeight.bold, textColor: Colors.orangeAccent),)
                    ),
                ),
              ),
            ],
          ),
    );
  }
}
