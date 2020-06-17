import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'colors.dart';
import 'dart:js' as js;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About VRC Toolkit',
      theme: ThemeData(
        fontFamily: 'BebasNeue',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: primaryBlack,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'VRC Toolkit'),
    );
  }
}

class CardWidgetOne extends StatelessWidget {
  CardWidgetOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
          ],
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: BodyStuff(),
      floatingActionButton: FAB(),
    );
  }
}


class FAB extends StatelessWidget {
  Widget build(BuildContext context) {
    return FloatingActionButton(
        child: Icon(Icons.info),
        tooltip: 'What is this?',
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('This site is about Team 839s VRC Toolkit Project. Stay tuned.'),
            ),
          );
        },
    );
  }
}

class LinkGiver extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 180,
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0)),
        child: const Text('View tech demos', style: TextStyle(fontSize: 20)),
        color: Colors.yellow,
        onPressed: () {
          js.context.callMethod("open", ["https://www.youtube.com/playlist?list=PLMwugHAAXO2MIhKC1L4Qo3Cq4dQUu80uj"]);
        },
      ),
    );
  }
}

class CardOne extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 450,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.lightbulb_outline),
                title: Text('Smart Picks', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('Uses combined data sources to determine the team that is the best pick for us. Algorithms calculate a ranking that is displayed into the app from our Azure CosmosDB Database.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CardTwo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 450,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Schedule', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('Schedule brings you the most relevant information about the tournament, including team status and rankings. Compared to VEX Via, schedule works with selecting the Event Code, so no bothersome filters required. Powered by the Concurrent Open Source Project.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CardThree extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 450,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.timer),
                title: Text('Integrated Timer', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('The integrated timer helps us practice for skills runs, or time other teams for scouting data. When in scouting mode, the recorded time for each subject (such as scoring) will be sent to the database.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CardFour extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 450,
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.assignment),
                title: Text('Scouting', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('Enter information about matches or teams and send it directly to our database. Scouted information will affect our Smart Picks, making the process more human and accurate.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CardFive extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 600,
      //height: 1000,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.developer_mode),
                title: Text('React Native', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('Built using the powerful React Native platform and JavaScript, we are able to use the app on both iOS and Android. JavaScript enables us to create new features fast and reliably.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('MORE'),
                    onPressed: () {js.context.callMethod("open", ["https://reactnative.dev/"]);},
                  ),
                  FlatButton(
                    child: const Text('GITHUB'),
                    onPressed: () {js.context.callMethod("open", ["https://github.com/facebook/react-native"]);},
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class CardSix extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 600,
      //height: 1000,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.http),
                title: Text('Axios', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('Axios provides reliable and easy HTTP GET requests for the VEXDB API. Axios powers the backend of everything, including getting data into the Database.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('MORE'),
                    onPressed: () {js.context.callMethod("open", ["https://www.npmjs.com/package/axios"]);},
                  ),
                  FlatButton(
                    child: const Text('GITHUB'),
                    onPressed: () {js.context.callMethod("open", ["https://github.com/axios/axios"]);},
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class CardSeven extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 600,
      //height: 1000,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.widgets),
                title: Text('Concurrent', style: TextStyle(fontFamily: 'RobotoMono')),
                subtitle: Text('VRC Toolkit is based on Concurrent, a piece of Open Source Software for VEX Robotics Competition. This allowed us to get up to speed with latest features, as well as have a streamlined schedule section.', style: TextStyle(fontFamily: 'RobotoMono')),
              ),
              ButtonBar(
                children: <Widget>[
                  /*FlatButton(
                    child: const Text('MORE'),
                    onPressed: () {js.context.callMethod("open", ["https://www.youtube.com/playlist?list=PLMwugHAAXO2MIhKC1L4Qo3Cq4dQUu80uj"]);},
                  ), */
                  FlatButton(
                    child: const Text('GITHUB'),
                    onPressed: () {js.context.callMethod("open", ["https://github.com/WontonSoup777/concurrent"]);},
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class BodyStuff extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: ListView(
        scrollDirection: Axis.vertical,
        children:[ Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Container(child: Spacer(flex: 4)),
            Container(
              padding: EdgeInsets.only(top: 180),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'The next generation of VEX scouting',
                  style: TextStyle(
                    fontSize: 70,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('VRC Toolkit by Team 839',
                  style: TextStyle(fontSize: 30, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: LinkGiver(),
              ),
            ),
            Container(
              height: 260,
              //width: 100,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: <Widget>[
                    CardOne(),
                    CardTwo(),
                    CardThree(),
                    CardFour()
                  ],
                ),

              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Text('Using Open Source Technology',
                  style: TextStyle(fontSize: 30, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  children: <Widget> [
                    CardFive(),
                    CardSix(),
                    CardSeven(),
                  ],
                )
              ),
            ),
            Container(
              height: 80,
            )

            //Container(child: Spacer(flex: 2)),

            //Container(child: Spacer(flex: 3)),
          ],
        ),
      ],
      ),
    );
  }
}

