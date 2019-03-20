import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("MD2 Tab Indicator", style: TextStyle(
            color: Colors.black87
          ),),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700
            ),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Color(0xff1967d2),
            unselectedLabelColor: Color(0xff5f6368),
            isScrollable: true,
            indicator: MD2Indicator(
              indicatorHeight: 3,
              indicatorColor: Color(0xff1967d2),
            ),
            tabs: <Widget>[
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Personal info",
              ),
              Tab(
                text: "Data & personalization",
              ),
              Tab(
                text: "Security",
              )
            ],
          ),
        ),
      )
      ,
    );
  }
}
