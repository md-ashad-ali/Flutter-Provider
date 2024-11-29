import 'package:flutter/material.dart';
import 'package:flutter_provider/Counter/Home.dart';
import 'package:flutter_provider/ListMapProvider.dart';
import 'package:flutter_provider/ListProvider.dart';
import 'package:provider/provider.dart';

class Adddata extends StatelessWidget {
  const Adddata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Add in Provider'),backgroundColor: Colors.blue,),
      
      floatingActionButton: FloatingActionButton(onPressed: (){
        context.read<ListMapProvider>().addData({
          'name': 'Ashadur Rahman',
          'age': 23,
          'development': 'flutter Developer'
        });
        Navigator.push(context, MaterialPageRoute(builder: (context)=> ListProvider()));
      },child: Icon(Icons.add),),
      
      
    );
  }
}
