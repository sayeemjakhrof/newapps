import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApps());
}

class MyApps extends StatelessWidget {
  MyApps({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator ',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue))),
          primaryColor: Colors.cyanAccent,
          appBarTheme: AppBarTheme(color: Colors.blue)),
      home: NavigatorScreen(),
    );
  }
}

class NavigatorScreen extends StatelessWidget {
  NavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Drawer(child: IconButton(onPressed: (){}, icon: Icon(Icons.android_outlined),),),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_alarm,
                color: Colors.white,
              )),
        ],
        title: Center(
          child: Text(
            'HomeScreen',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SettingScreen();
                  }));
                },
                child: Text(
                  'Open Setting Button',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )),
            Divider(
              color: Colors.grey.shade200,
              height: 20,
              indent: 120,
              endIndent: 120,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderScreen()));
                },
                child: Text(
                  'Open Order Button',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting Screen',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderScreen()));
              },
              child: Text(
                'Open Order Button',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 20,
              indent: 120,
              endIndent: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to Home',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order Screen',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>NavigatorScreen()),
                        (route) => false);
              },
              child: Text(
                'Open Setting Button',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            Divider(
              color: Colors.grey.shade200,
              height: 20,
              indent: 120,
              endIndent: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back to Home',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
