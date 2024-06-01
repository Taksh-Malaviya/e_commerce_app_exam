import 'dart:developer';

import 'package:exam1/List/list.dart';
import 'package:exam1/Routes/routes.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: h * 0.1,),
                  Container(
                    height: h * 0.05,
                    width: w * 0.302,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Search",style: TextStyle(
                        fontSize: textScaler.scale(18),
                        fontWeight: FontWeight.w400
                      ),
                      ),
                    ),
                  ),
                  SizedBox(width: w * 0.03,),
                  Icon(Icons.location_on,size: 30,),
                  SizedBox(width: w * 0.02,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Routes.cart_page);
                      log("Pressed");
                    },
                      child: Icon(Icons.shopping_bag_outlined,size: 30,)),
                ],
              ),
              SizedBox(height: h * 0.02,),
              Container(
                height:  h * 0.2,
                width: w * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xffF9EFE1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Summer Sale \n 50% OFF ",style: TextStyle(
                        fontSize: textScaler.scale(32),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(height: h * 0.04 ,
                        width: w * 0.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,
                          top: 7),
                          child: Text("Buy Now",style:  TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h * 0.02,),
              Padding(
                padding: const EdgeInsets.only(right:240),
                child: Text("Top Categories",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textScaler.scale(18),
                ),),
              ),
              SizedBox(height: h * 0.02,),
              Row(
                children: [
                  ...subCategory.map((e) => Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey.shade200,
                              child: Text( e['Text'] ,style: TextStyle(
                                  fontSize: textScaler.scale(9),
                                color: Colors.black
                              ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )).toList(),

                ],
              ),
              SizedBox(height: h * 0.03,),
              Padding(
                padding: const EdgeInsets.only(right:260),
                child: Text("Best Sellers",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: textScaler.scale(18),
                ),),
              ),
              SizedBox(height: h * 0.03,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      ...allProducts.map((e) => GestureDetector(
                           onTap: (){
                         Navigator.pushNamed(context, Routes.detail_page,arguments: e );
                          },
                        child: Container(
                          height: h * 0.33,
                          width: w * 0.2,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0,5),
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child:  Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.network(e['thumbnail']),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: h * 0.01,
                                    ),
                                    Text(e['name'],style: TextStyle(
                                      fontSize:  textScaler.scale(13),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    SizedBox(height: h * 0.01,),
                                    Row(
                                      children: [
                                        Text(e['brandName'],style: TextStyle(
                                          fontSize:  textScaler.scale(14),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: h * 0.001,),
                                    Row(
                                      children: [
                                        Text("\$ ${e['price']}".toString(),style: TextStyle(
                                          fontSize:  textScaler.scale(14),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
