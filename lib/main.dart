import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Myapps());
}

class Myapps extends StatelessWidget{
 const Myapps({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListTilel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Colors.orange.shade400),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.purple.shade700, fontWeight: FontWeight.bold, fontSize: 20,),
          titleSmall: TextStyle(color: Colors.orange, fontWeight: FontWeight.w500, fontSize: 18),
        ),
      ),
      home: NewApps(),
    );
  }
}

class NewApps extends StatelessWidget{
  NewApps({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_alarm, size: 40, color: Colors.black,),
        title: Center(child: Text('apps',style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),)),
      ),
      body: Scrollbar(
        radius: Radius.circular(10),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a app developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a web developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is web Designer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text(' Graphics Desinger', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a app developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
            thickness: .5,
            endIndent: 20,
            indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a app developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a app developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a app developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
            Divider(height: 10, color: Colors.black,
              thickness: .5,
              endIndent: 20,
              indent: 20,),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text('SayeemJakhrof', style: Theme.of(context).textTheme.titleLarge,),
              subtitle: Text('He is a app developer', style: Theme.of(context).textTheme.titleSmall,),
              trailing: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.account_box,), label: Text('login')),
              onTap: (){ print('login');},
              minVerticalPadding: 20,
              //focusColor: Colors.black,
              titleAlignment: ListTileTitleAlignment.center,
              horizontalTitleGap: 30,
            ),
          ],
        ),
      ),
    );
  }
}