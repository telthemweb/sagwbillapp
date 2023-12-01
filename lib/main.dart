import 'package:flutter/material.dart';
import 'package:sagehill/ui/Dashboard.dart';
import 'package:sagehill/ui/SplashScreenData.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sagehill Bills',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashScreenData(),
    );
  }
}
