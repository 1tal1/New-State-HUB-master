import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'with_tabbar.dart';

bool isSwitched = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  if (isSwitched = false) {}
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Color.fromARGB(255, 137, 41, 41),
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const WithTabBar(),
    );
  }
}
