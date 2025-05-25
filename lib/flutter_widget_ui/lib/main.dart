import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/pages/page_one.dart';
import 'package:flutter_widget_ui/pages/page_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const PageOne(),
      initialRoute: '/',

      routes: {
        '/': (context) => const PageOne(),
        '/second': (context) => const PageTwo(text: 'Hello Bro'),
      },
    );
  }
}
