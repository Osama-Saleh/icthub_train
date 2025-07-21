import 'package:flutter/material.dart';
import 'package:new_project/product_api_screen/data_source/product_api_data_source_impl.dart';

class ProductApiScreen extends StatefulWidget {
  const ProductApiScreen({super.key});

  @override
  State<ProductApiScreen> createState() => _ProductApiScreenState();
}

class _ProductApiScreenState extends State<ProductApiScreen> {
  // bool isLoading = false;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   fetchProduct();
  // }

  // Future<void> fetchProduct() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   await ProductApiDataSourceImpl.getProduct();
  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ProductApiDataSourceImpl.fetchProduct(),
        builder: (context, snapshot) {
          print(snapshot);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            return snapshot.data!.length == 0
                ? Center(
                    child: Text('Not have Products'),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.network(
                            ProductApiDataSourceImpl.products[index].image),
                        title: Text(
                            ProductApiDataSourceImpl.products[index].title),
                        subtitle: Text(
                          ProductApiDataSourceImpl.products[index].description,
                          maxLines: 1,
                        ),
                        trailing: Text(
                            '${ProductApiDataSourceImpl.products[index].price} \$'),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: ProductApiDataSourceImpl.products.length);
          }
          return Text('Some thing Error');
        },
      ),
      // body: Center(
      //   child: isLoading
      //       ? Center(child: CircularProgressIndicator())
      //       : ProductApiDataSourceImpl.products.length == 0
      //           ? Text('Not Have Products')
      // : ListView.separated(
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         leading: Image.network(
      //             ProductApiDataSourceImpl.products[index].image),
      //         title: Text(
      //             ProductApiDataSourceImpl.products[index].title),
      //         subtitle: Text(
      //           ProductApiDataSourceImpl.products[index].description,
      //           maxLines: 1,
      //         ),
      //         trailing: Text(
      //             '${ProductApiDataSourceImpl.products[index].price} \$'),
      //       );
      //     },
      //     separatorBuilder: (context, index) => SizedBox(
      //           height: 10,
      //         ),
      //     itemCount: ProductApiDataSourceImpl.products.length),
      // ),
    );
  }
}
