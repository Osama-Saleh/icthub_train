// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  String image;
  String name;
  double price;
  ProductModel({
    required this.image,
    required this.name,
    required this.price,
  }); 

  static List<ProductModel> productList = [
      ProductModel(image: 'assets/images/items_image/image3.png', name: 'Boston Lettuce', price: 1.10),
      ProductModel(image: 'assets/images/items_image/image1.png', name: 'Purple Cauliflower', price: 1.85),
      ProductModel(image: 'assets/images/items_image/Media.png', name: 'Savoy Cabbage', price: 1.45),
      ProductModel(image: 'assets/images/items_image/image3.png', name: 'Boston Lettuce', price: 1.10),
      ProductModel(image: 'assets/images/items_image/image1.png', name: 'Purple Cauliflower', price: 1.85),
      ProductModel(image: 'assets/images/items_image/Media.png', name: 'Savoy Cabbage', price: 1.45),
      ProductModel(image: 'assets/images/items_image/image3.png', name: 'Boston Lettuce', price: 1.10),
      ProductModel(image: 'assets/images/items_image/image1.png', name: 'Purple Cauliflower', price: 1.85),
      ProductModel(image: 'assets/images/items_image/Media.png', name: 'Savoy Cabbage', price: 1.45),
  ];
  
}
