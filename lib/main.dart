import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blue[50],
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'OpenSans',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
              bodyText2: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
              headline6: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              subtitle1: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              caption: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Colors.blueAccent,
              ),
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (ctx) => TabScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
