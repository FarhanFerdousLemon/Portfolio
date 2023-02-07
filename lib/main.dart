import 'package:farhan_ferdous/mobile/landing_page_mobile.dart';
import 'package:farhan_ferdous/web/landing_page_web.dart';
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

      home: LayoutBuilder(
        builder:( context, constraints){
          if (constraints.maxWidth>800){
            return LandingPageWeb();
          } else {
            return LandingPageMobile();
          }

    } ,
      ),
    );
  }
}

