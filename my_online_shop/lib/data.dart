import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/API.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/screens/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/data.dart';
import 'package:online_shop/screens/cart.dart';
import 'package:online_shop/screens/catalog.dart';
import 'dart:convert' show jsonDecode;

class DataDumper {
    static List<ProductModel> _inCart = List<ProductModel>();

    static List<ProductModel> getProducts() {
        List<ProductModel> models = List<ProductModel>();
models.add(ProductModel("Кроссовки","Белые модные фэшион",5000, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",1000, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",95, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",85, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",75, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",65, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",45, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",25, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));
models.add(ProductModel("title","description",15, "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg"));

        return models;
    }

    static getProductsOnline() async {
        var data = await API.getProducts();
        if (data != null) {
            var jsonData = jsonDecode(data.body);
             List<ProductModel> models = List<ProductModel>();
             models = 
             jsonData.map((model) => ProductModel.fromJson(model)).toList();
           
           return models;
        } else {
            return getProducts();
        }
    }

    static List<ProductModel> getCart() {
        return _inCart;
    }

    static addCart(ProductModel model) {
        _inCart.add(model);
    }

    static removeCart(ProductModel model) {
        _inCart.remove(model);
    }

     static getCartPrice() {
         var cost = 0.0;
        _inCart.forEach((element) {
            cost += element.cost;
        });
        return cost;
    }
}