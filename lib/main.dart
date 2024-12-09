import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/dummy_responsive.dart';
import 'package:flutter_application_1/Screens/front_screen.dart';
import 'package:flutter_application_1/Screens/paly.dart';
import 'package:flutter_application_1/Screens/product_screen.dart';
import 'package:flutter_application_1/Screens/todo_screen.dart';
import 'package:flutter_application_1/provider/counter_provider.dart';
import 'package:flutter_application_1/provider/todo_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Todo()),
    ChangeNotifierProvider(create: (_) => Counter())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProductScreen(),
    );
  }
}
