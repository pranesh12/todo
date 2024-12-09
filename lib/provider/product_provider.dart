import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';

class Products extends ChangeNotifier {
  Product? product;
  bool isLoading = false;
  String ?errmessage;

  Product? get _product => product;
  

}