
import 'package:flutter/material.dart';
import 'package:untitled4todoappusingredux/add_product_screen.dart';
import 'package:untitled4todoappusingredux/main.dart';
class AppRoutes{
  static final Map<String, Widget Function(BuildContext)> routes={
    '/':(_)=>App(),
    AddProduct.routeName:(_)=>AddProduct(),
  };
}