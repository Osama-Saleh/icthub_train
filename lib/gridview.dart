import 'package:flutter/material.dart';
import 'package:new_project/models/product_model.dart';
import 'package:new_project/train.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      // appBar: AppBar(
      //   title: Text('Custom Grid View'),
      //   leading: IconButton(onPressed: () {
      //     Navigator.pop(context);
      //   }, icon: Icon(Icons.arrow_back)),
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 8,
            childAspectRatio: 0.9,
            ),
            itemCount: ProductModel.productList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  )),
                  child: Image.asset(
                    ProductModel.productList[index].image,
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 10, left: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${ProductModel.productList[index].name}',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text('(${ProductModel.productList[index].price})',style: TextStyle(
                             color: Colors.grey[700]),),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
