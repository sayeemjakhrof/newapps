import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
            background: Colors.black12,
          ),
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              centerTitle: true,
              color: Colors.lime[800],
              shadowColor: Colors.black12)),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        color: Colors.orange,
        centerTitle: true,
        shadowColor: Colors.black,
      )),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List ArrayList = [
    {'name': 'Dominic', 'age': '18', 'Nationality': 'Austelia'},
    {'name': 'jao', 'age': '20', 'Nationality': 'newziland'},
    {'name': 'carry', 'age': '23', 'Nationality': 'Italy'},
    {'name': 'john', 'age': '38', 'Nationality': 'America'},
    {'name': 'John show', 'age': '34', 'Nationality': 'America'},
    {'name': 'Sayeem Jakhrof', 'age': '35', 'Nationality': 'Bangladesh'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          child: ListView(
              children: ArrayList.map((value) => ListTile(
                    titleTextStyle: TextStyle(fontSize: 24),
                    iconColor: Colors.grey,
                    leading: Icon(Icons.circle),
                    title: Text(value['name'].toString()),
                    subtitle: Text(value['Nationality'].toString()),
                    trailing:
                        CircleAvatar(
                            child: Text(value['age'].toString())),
                  )).toList()),
        ));
  }
}
