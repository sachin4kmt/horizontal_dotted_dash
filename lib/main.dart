import 'package:flutter/material.dart';
import 'package:horizontal_dotted_dash/dotted_border.dart';
import 'package:horizontal_dotted_dash/horizontal_line.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Horizontal Dotted Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: MyHomePage.routeName ,
      routes: {
        MyHomePage.routeName: (context) => const MyHomePage(),
        HorizontalDottedLine.routeName: (context) => const HorizontalDottedLine(),
        DottedOutLine.routeName: (context) => const DottedOutLine(),
        '/dotted': (context) => const MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const routeName = "/";

  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal Dotted Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  <Widget>[
        ElevatedButton(onPressed: (){
Navigator.of(context).pushNamed(HorizontalDottedLine.routeName);
        }, child: const Text("Horizontal Dotted Line")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(DottedOutLine.routeName);
            }, child: const Text("Dotted Border"))
          ],
        ),
      ),
    );
  }
}
