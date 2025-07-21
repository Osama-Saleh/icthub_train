import 'package:flutter/material.dart';
import 'package:new_project/models/product_model.dart';

class ItemsUi extends StatelessWidget {
  const ItemsUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: 150,
              color: Colors.grey.withAlpha(40),
              child: Row(
                children: [
                  // png or jpg
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                            ProductModel.productList[index].image)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        ProductModel.productList[index].name,
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            '${ProductModel.productList[index].price}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('\$ / price',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff9586a8),
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0bce83),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: ProductModel.productList.length),
    );
  }
}
