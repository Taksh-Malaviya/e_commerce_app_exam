import 'package:exam1/Routes/routes.dart';
import 'package:exam1/screen/homepage/home_page.dart';
import 'package:flutter/material.dart';

import '../screen/homepage/home_page.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.myRoutes,
    );
  }
}
