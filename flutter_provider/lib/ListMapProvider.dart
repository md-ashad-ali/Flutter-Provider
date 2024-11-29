
import 'package:flutter/cupertino.dart';

class ListMapProvider extends ChangeNotifier{

  List <Map<String,dynamic>> _data =[];
  List<Map<String, dynamic>> get getdata => _data;

  void addData(Map<String,dynamic> data){
    _data.add(data);
    notifyListeners();
  }

  void Upadate(Map<String,dynamic> update, int index){
  _data[index] = update;
  notifyListeners();
  }

  void DeletData(int index){
    _data.removeAt(index);
    notifyListeners();
  }

}