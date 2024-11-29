import 'package:flutter/material.dart';
import 'package:flutter_provider/AddData.dart';
import 'package:flutter_provider/Counter/Home.dart';
import 'package:flutter_provider/ListMapProvider.dart';
import 'package:flutter_provider/main.dart';
import 'package:provider/provider.dart';

class ListProvider extends StatelessWidget {
  const ListProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var pro_ctx = context.read<ListMapProvider>();
    print('Full project Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of  this Provider'),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /*context.read<ListMapProvider>().addData(
          {
            'name': 'Ashadur Rahman',
            'age': 23,
            'development': 'flutter Developer'
          }
        );*/
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Adddata()));
        },
        child: Icon(Icons.add),
      ),
      body: Consumer<ListMapProvider>(builder: (Context, value, chld) {
        var AllData = value.getdata;
        print('Sum project Build');
        return AllData.isNotEmpty
            ? ListView.builder(
                itemCount: value.getdata.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text('${AllData[index]['name']}'),
                    subtitle: Text('${AllData[index]['age']}'),
                    trailing: SizedBox(
                      width: 120,
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {

                                context.read<ListMapProvider>().Upadate({
                                  'name': 'Ashikur  Rahman',
                                  'age': 25,
                                  'development': 'Gaming'
                                }, index);
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                context.read<ListMapProvider>().DeletData(index);
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                  );
                })
            : Center(
                child: Text('No content'),
              );
      }),
    );
  }
}
