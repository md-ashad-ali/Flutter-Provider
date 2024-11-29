
import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
   int _count = 0;
   int get count => _count;

   void addData(){
     _count++;
     notifyListeners();
   }
   void Dicrement(){
     if(_count>0){
       _count--;
       notifyListeners();
     }
   }

}