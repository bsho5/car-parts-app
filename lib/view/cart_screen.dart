import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/view/widgets/custom_button.dart';
import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  List<String> names = [
    'Handmaid Chair',
    'Modren Chair',
    'Office Chair',
    'Simple Chair',
    'Flexible Chair ',
    'Cozy Chair'
  ];
  List<String> images = [
    'assets/images/images-1.jpeg',
    'assets/images/images-2.jpeg',
    'assets/images/images-3.jpeg',
    
    
    'assets/images/images-4.jpeg',
    'assets/images/images-5.jpeg',
    'assets/images/images-6.jpeg',
  ];
  List<int> prices = [
    350,
    500,
    400,
    250,
    150,
    100,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    height: 140,
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: names[index],
                                fontSize: 20,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              CustomText(
                                text: '\$ ${prices[index].toString()}',
                                color: primaryColor,
                                fontSize: 20,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade200),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12),
                                        child: Container(
                                          child: Icon(
                                            Icons.minimize,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CustomText(
                                        text: '1',
                                        fontSize: 20,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: names.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(
                      text: 'Total',
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: '\$ 1750',
                      fontSize: 20,
                      color: primaryColor,
                    )
                  ],
                ),
                CustomButton(onPressed: () {}, text: 'CHECKOUT')
              ],
            ),
          )
        ],
      ),
    );
  }
}
