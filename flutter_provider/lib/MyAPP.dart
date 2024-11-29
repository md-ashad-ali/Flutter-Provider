import 'package:flutter/material.dart';
import 'package:flutter_provider/Counter/CounterProvider.dart';
import 'package:flutter_provider/Counter/Home.dart';
import 'package:flutter_provider/ListMapProvider.dart';
import 'package:flutter_provider/ListProvider.dart';
import 'package:provider/provider.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter state ment provider',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent)
        ),
       // home:const Home(),
        home:const ListProvider(),
      );
  }
}
