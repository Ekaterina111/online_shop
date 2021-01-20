import 'package:online_shop/API.dart';
import 'package:online_shop/data.dart';

class ProductModel{
final String title;
final String description;
final double cost;
final String image;

ProductModel(this.title, this.description, this.cost, this.image);

static ProductModel fromJson(jsonData) {
return ProductModel(jsonData['title'], jsonData['description'],
double.parse(jsonData['cost']), "https://ae01.alicdn.com/kf/H0aeb167b860f48d29576015e6bf4748c6/sneakers2019-zapatos-leopardo-mujer-shoesW.jpg");
    
}
}