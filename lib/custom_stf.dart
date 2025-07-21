import 'package:flutter/material.dart';

class CustomStf extends StatefulWidget {
  const CustomStf({super.key});

  @override
  State<CustomStf> createState() => _CustomStfState();
}

class _CustomStfState extends State<CustomStf> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  image: AssetImage(
                      'assets/images/numbers/image$imageNumber.jpg')),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          
                        if (imageNumber >= 4) {
                          imageNumber = 4;
                        } else {
                          imageNumber++;
                        }
                        });
                      },
                      child: Text('Next')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                        if(imageNumber<1 && imageNumber<=4){
                        imageNumber--;

                        }else{
                          imageNumber = 1;
                        }
                          
                        });
                      },
                      child: Text('Back')),
                ],
              )
            ],
          ),
        ));
  }
}
