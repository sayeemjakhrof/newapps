import 'package:flutter/material.dart';

void main(){
  runApp(const Myapp());

}

class Myapp extends StatelessWidget{
  const Myapp({super.key});


  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'NewApp',
      debugShowCheckedModeBanner: false,
      home: Button(),
    );
  }
}
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(onPressed: (){},),
      appBar: AppBar(
        
        //leading: const Icon(Icons.menu),
        toolbarHeight: 70,
        backgroundColor: Colors.amber.shade600,
        title: Center(
            child: Text('Button',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
              ),
            ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         Center(
             child: ElevatedButton(
               autofocus: true,
                 onPressed: (){
             print("on press");
         },
         onLongPress: (){
           print("Deleting button");
         },
             child: const Text('ElevatedButton', style: TextStyle(fontWeight: FontWeight.bold,
             fontSize: 30,
             color: Colors.brown
         ),
         ),
         ),
         ),
          const SizedBox(height: 10,),
          Center(
              child: TextButton(
                onPressed: (){},
                child: const Text('This is Text Button',
                  style: TextStyle(
                      color: Colors.amber, fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: IconButton(
              icon: Icon(Icons.add, size: 100, color: Colors.amberAccent,),
              onPressed: (){
                print('Timer checker');
              },
            ),
          ),
          const SizedBox(height: 10,),

        ],
      ),
    );
  }
}


