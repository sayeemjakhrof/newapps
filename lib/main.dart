import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          theme: ThemeData(
            appBarTheme: AppBarTheme(color: Colors.blue),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyan),
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,
      home: CounterApps()));
}

class CounterApps extends StatefulWidget {
  CounterApps({super.key});

  @override
  State<CounterApps> createState() => _CounterAppsState();
}

class _CounterAppsState extends State<CounterApps> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CounterApps',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(),
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize: 50)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          elevatatButtonScreen(personName: "Jakhrof Sayeem"),
                    ),
                  );
                },
                child: Text(
                  'Next Page',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            if (counter < 50) {
              counter++;
              setState(() {});
            };
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      );
  }
}

class elevatatButtonScreen extends StatefulWidget {
  final String personName;
  elevatatButtonScreen({super.key, required this.personName});

  @override
  State<elevatatButtonScreen> createState() => _elevatatButtonScreenState();
}

class _elevatatButtonScreenState extends State<elevatatButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Person Name',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                widget.personName,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text('hello ', style: TextStyle(fontSize: 22),),
              Icon(Icons.add_alarm)
            ],
          ),
        ),
    );
  }
}
