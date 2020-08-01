import 'package:flutter/material.dart';

import '../routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6DCE75),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home, size: 25, color: Color(0xFF6DCE75)),
                    SizedBox(height: 3),
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.description, size: 25, color: Colors.black87),
                    SizedBox(height: 3),
                    Text(
                      'Orders',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.shoppingCart);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shopping_cart, size: 25, color: Colors.black87),
                    SizedBox(height: 3),
                    Text(
                      'Cart',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              'Home',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Image(
                              image: AssetImage(
                                  'assets/images/app_logo_white.png'),
                              height: 40,
                              width: 70,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.white70,
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              'What will you order today?',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.gasSuppliers);
                                    },
                                    child: Card(
                                      elevation: 0,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/gas.png'),
                                              height: 60,
                                              width: 90,
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            height: 1,
                                            decoration: BoxDecoration(
                                                color: Colors.black26
                                                // border:  Border.all(width: , ),
                                                ),
                                          ),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text('Gas'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.0),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.liquorStores);
                                    },
                                    child: Card(
                                      elevation: 0,
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/beer.png'),
                                              height: 60,
                                              width: 90,
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            height: 1,
                                            decoration: BoxDecoration(
                                                color: Colors.black26),
                                          ),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text('Liquor'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              // Image(
                              //   // color: Colors.w,
                              //   image: AssetImage('assets/images/app_logo.png'),
                              //   height: 60,
                              //   width: 90,
                              // ),
                              Text(
                                'MyDoorstep',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black26, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                'Tap . Order . We deliver',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black26, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          // Container(
                          //   height: 180,
                          //   width: 180,
                          //   color: Colors.white38,
                          // )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
