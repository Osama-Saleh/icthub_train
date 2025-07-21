import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var formKey = GlobalKey<FormState>();

  int resultSum = 0;

  TextEditingController? number1Controller = TextEditingController();

  TextEditingController? number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$resultSum',
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: number1Controller,
                keyboardType: TextInputType.number,
                validator: (value) {
                  int? result = int.tryParse(value ?? '');
                  if ((result??0) > 10) {
                    return 'must number less than 10';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Number 1',
                    hintStyle: TextStyle(
                      color: Colors.amber,
                    ),
                    label: Text('Number 1'),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.green, width: 1.5),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 1.5),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.red, width: 1.5),
                    )),
              ),
              // SizedBox(
              //   height: 12,
              // ),
              // TextFormField(
              //   controller: number2Controller,
              //   validator: (value) {
              //     int? result = int.tryParse(value ?? '');
              //     if (result == null || result == '') {
              //       return 'must set number in filed';
              //     }
              //     return null;
              //   },
              //   decoration: InputDecoration(
              //       hintText: 'Number 2',
              //       label: Text('Number 2'),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: BorderSide(color: Colors.black, width: 1.5),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: BorderSide(color: Colors.green, width: 1.5),
              //       ),
              //       errorBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: BorderSide(color: Colors.red, width: 1.5),
              //       ),
              //       focusedErrorBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12),
              //         borderSide: BorderSide(color: Colors.red, width: 1.5),
              //       )),
              // ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) {
                        int n1 = int.parse(number1Controller!.text);
                        int n2 = int.parse(number2Controller!.text);
                        // resultSum = n1 + n2;
                      }
                    });
                  },
                  child: Text('Sum'))
            ],
          ),
        )),
      ),
    );
  }
}
