import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff000000),

        //Appbar styling
        appBar: NewGradientAppBar(
          gradient:
              LinearGradient(colors: [const Color(0xffa1e23c), const Color(0xff78ce01)]),
          //Title Text
          title: const Text(
            "SHOES CARD",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),

          //Buy Icon
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
          ],
        ),

        //  Body styling
        body: Center(
          child: Container(
            width: 250,
            height: 400,
            decoration: BoxDecoration(
              color: const Color(0xff232323),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              // Shoes image and background
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    child: Stack(
                      children: [
                        //shoes background
                        Container(
                          width: 150,
                          height: 150,
                          // padding: EdgeInsets.only(top: 10),
                          margin: const EdgeInsets.only(
                            top: 25,
                            left: 50,
                          ),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xffa1e23c),
                                Color(0xff78ce01),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),

                        //image
                        Container(
                          margin: const EdgeInsets.only(
                            top: 87,
                            right: 55,
                          ),
                          transform: Matrix4.rotationZ(-0.3),
                          child: const Image(
                            width: 200,
                            image: AssetImage("ass/image/shoes.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: const Text(
                      "NIKE SHOES",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                ),

                //sizebar
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: const EdgeInsets.only(
                        top: 140,
                        right: 25,
                      ),
                      child: Stack(
                        children: <Widget>[
                          const Text(
                            "SIZE:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                                fontFamily: "Montserrat"),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 70),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 20,
                                  height: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Color(0xff232323),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20 + 8),
                                  width: 20,
                                  height: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      color: Color(0xff232323),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 20 + 20 + 8 + 8),
                                  width: 20,
                                  height: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xff9AD839),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                      color: Color(0xff232323),
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),

                //color bar
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 200,
                    ),
                    child: Stack(
                      children: <Widget>[
                        Text(
                          "COLORS:",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                              fontFamily: "Montserrat"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 20,
                                height: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff47A3CC),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20 + 8),
                                width: 20,
                                height: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xffE854AE),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20 + 20 + 8 + 8),
                                width: 20,
                                height: 20,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff9AD839),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //  Buy Now Button
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: 300,
                    ),
                    width: 140,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffa1e23c),
                          Color(0xff78ce01),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      "BUY NOW",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Montserrat",
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
