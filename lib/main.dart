import 'package:control_work/pages/desktop.dart';
import 'package:control_work/pages/mobile.dart';
import 'package:control_work/pages/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomePage.path: (context) => const HomePage(),
        SeconPage.path: (context) => const SeconPage()
      },
      initialRoute: HomePage.path,
    );
  }
}

class HomePage extends StatefulWidget {
  static const String path = "/home33333_app";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.of(context).size.width > 500) {
          return const DesctopVersions();
        }
        return const MobileVersions();
      },
    ));
  }
}





//flutter pub run flutter_native_splash:create --path=C:\Users\ACER\Documents\flutter\modul_5\control_work\flutter_native_splash.yaml