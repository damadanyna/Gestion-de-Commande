import 'package:ecommerce_app/rootPages.dart';
import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/material.dart';

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
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: Constants.myWhite),
      home: const RootPage(),
    );
  }
}
