import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:online_shop/screens/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/data.dart';
import 'package:online_shop/screens/cart.dart';
import 'package:online_shop/API.dart';

class API {
    static Future<http.Response> getProducts() async {
       var result = 
       await http.get("https://5f7d7bd5834b5c0016b061b9.mockapi.io/product");
       if(result.statusCode == 200) {
            return result;

       }
       else {
        return null;
       }
    }
}