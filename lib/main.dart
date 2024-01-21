import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
// import 'package:portfolio/homepage/homepage.dart';
import 'package:portfolio/pages/homepage/homepage.dart';

Future<void> main()async {
   await Motion.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BackgroundPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
