import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final baseUrl = "https://dummyjson.com/products";

  @override
  void initState() {
    super.initState();
    fetchProduct();
  }

  Future<void> fetchProduct() async {
    try {
      final res = await http.get(Uri.parse(baseUrl));
      if (res.statusCode == 200) {
        final data = json.decode(res.body);
        print(Product.fromJson(data));
      }
    } catch (e) {
      print("Some thing went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product page"),
      ),
      body: SafeArea(
        child: Column(
          children: [Text("Dymmy Text")],
        ),
      ),
    );
  }
}
