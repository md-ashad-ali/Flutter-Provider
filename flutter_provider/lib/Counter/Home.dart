import 'package:flutter/material.dart';
import 'package:flutter_provider/Counter/CounterProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

  //  final provider = Provider.of<CounterProvider>(context,listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {
              print('increment clicked');
              context.read<CounterProvider>().addData();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              print('dicrement clicked');
              context.read<CounterProvider>().Dicrement();
            },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
      body: Center(
          child: Consumer<CounterProvider>(builder: (Context,_, __){
          final text =  Context.watch<CounterProvider>().count;
          return Text('${text}');
          })
      ),
    );
  }
}
