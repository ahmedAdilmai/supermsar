
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:supermarkt/modle/item.dart';

class cart with ChangeNotifier {
  List selectedProducts = [
 ];
  int price=0;
  add(Item prodect) {
    selectedProducts.add(prodect);
    price +=prodect.price.round();
 notifyListeners();
  }
  delete(Item prodect){
selectedProducts.remove(prodect);
price -= prodect.price.round();

notifyListeners();
  }
  get itemCount{
    return selectedProducts.length;
  }
}
