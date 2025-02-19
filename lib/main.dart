import 'package:flutter/material.dart';
import 'package:tots/pages/foldernotespreview.dart';
import 'package:tots/pages/homepage.dart';
import 'package:tots/pages/singlenotepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.transparent
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
      //home: const Singlenotepage(theNoteName: 'Yes', mustRaed: true,),
    );
  }
}

