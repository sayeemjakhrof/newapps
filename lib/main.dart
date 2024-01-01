import 'package:flutter/material.dart';

void main(){
  runApp( Myapps());
}
class Myapps extends StatelessWidget {
  Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.amberAccent.shade700),
            primarySwatch: Colors.orange,
            canvasColor: Colors.brown),
      title: 'Login Page',
      home: Login_page(),
    );
  }
}
class Login_page extends StatelessWidget{
  var email = TextEditingController();
  var pass = TextEditingController();
    Login_page({super.key});
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                'Login Page',
                style: TextStyle(
                    color: Colors.black,
                fontSize: 24,fontWeight: FontWeight.bold
                ),),
        ),
      ),
        body: Center(
          child: Container(width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //height: ,
                child: Text('Login', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 40),),
              ),
              TextField(
                c
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  prefixIcon: Icon(Icons.mail, color: Colors.orangeAccent, size: 20,),
                  //prefixText:'Please enter our Email',
                    helperText: 'Please Enter our Email',
                  helperStyle: TextStyle(color: Colors.orange.shade400),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.orangeAccent, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.brown, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.amberAccent, width: 2)
                  )
                ),

              ),
              SizedBox(height: 20,),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass,
                readOnly: false,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.password, color: Colors.orangeAccent, size: 20,),
                    helperText: 'Please Enter our password',
                    helperStyle: TextStyle(color: Colors.orange.shade400),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.orangeAccent, width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.deepPurple, width: 2)
                    )
                ),
              ),
              IconButton(onPressed: (){
               String _Email = email.text;
               String _pass = pass.text;
               print('Email Address $_Email & password is $_pass');
              }, icon: Text('login'), color: Colors.orange,focusColor: Colors.orange,)
            ],
          ),),
        ),
      );
  }
  }
