
import 'dart:developer';

import 'package:exam1/List/list.dart';
import 'package:flutter/material.dart';

import '../cartpage/cartpage.dart';




class Detail_page extends StatefulWidget {
  const Detail_page({super.key});

  @override
  State<Detail_page> createState() => _Detail_pageState();
}

class _Detail_pageState extends State<Detail_page> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> pro =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.height;

    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                  ],
                ),
                Image.network(pro['thumbnail']),
                SizedBox(height: h * 0.03),
                Column(
                  children: [
                    Text(
                      "DESCRIPTION",
                      style: TextStyle(
                          fontSize: textScaler.scale(16),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Divider(),
                //SizedBox(height: h * 0.02),
                Column(
                  children: [
                    Text(
                      pro['discription'],
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: textScaler.scale(13),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Price        :   ${pro['price']}".toString(),
                  style: TextStyle(
                      fontSize: textScaler.scale(16),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text("Cata      :    ${pro['cata']}".toString(),
                    style: TextStyle(
                        fontSize: textScaler.scale(16),
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Brand       :   ${pro['brandName']}",
                  style: TextStyle(
                      fontSize: textScaler.scale(16),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 280),
                 child: GestureDetector(
                   onTap: (){
                   cart.contains(pro);
                   cart.add(pro);
                   log("Added");
                   },
                   child: Container(
                     height: h * 0.05,
                     width: w * 0.1,
                     decoration:  BoxDecoration(
                       color: Colors.grey.shade200,
                       borderRadius: BorderRadius.circular(20)
                     ),
                     alignment: Alignment.center,
                     child: Text("Add",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                 ),
               ),
              ],
            ),
        ),
      ),
    );
  }
}
