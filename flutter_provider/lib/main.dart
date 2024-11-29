import 'package:flutter/material.dart';
import 'package:flutter_provider/MyAPP.dart';
import 'package:provider/provider.dart';

import 'Counter/CounterProvider.dart';
import 'ListMapProvider.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CounterProvider()),
        ChangeNotifierProvider(create: (_)=> ListMapProvider()),
      ],
      child: const Myapp())
  );
}

