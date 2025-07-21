import 'package:dio/dio.dart';
import 'package:new_project/models/product_api_model.dart';

class ProductApiDataSourceImpl {
  static final dio = Dio();
  static List<ProductApiModel>  products =[];
  static Future<List<ProductApiModel>> fetchProduct()async{
    try {
      var response = await dio.get('https://fakestoreapi.com/products');
     if (response.statusCode == 200) {
        List newRespo = response.data;
        for (var item in newRespo) {
          final ProductApiModel result = ProductApiModel.fromJson(item);
          products.add(result);
        }
        return products;
      } else {
        print('cant get products');
        return [];
      } 
    } catch (e) {
      print(e); 
      return [];
    }
  }


  // static List<ProductApiModel> products = [];

  // static Future<void> getProduct() async {
  //   try {
  //     var response = await dio.get('https://fakestoreapi.com/products');
      // if (response.statusCode == 200) {
      //   List newRespo = response.data;
      //   for (var item in newRespo) {
      //     final ProductApiModel result = ProductApiModel.fromJson(item);
      //     products.add(result);
      //   }
      // } else {
      //   print('cant get products');
      // }
  //   } catch (e) {
  //     print('error ${e.toString()}');
  //   }
  // }
}
