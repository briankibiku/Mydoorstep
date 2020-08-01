import 'package:flutter/material.dart';

class GasShop extends StatefulWidget {
  GasShop({this.gasStoreName});
  final String gasStoreName;
  @override
  _GasShopState createState() => _GasShopState();
}

class _GasShopState extends State<GasShop> {
  @override
  Widget build(BuildContext context) {
    var suppliersList = [
      {
        'speciality': 'Gilbeys Gin',
        'price': 'KES: 700',
        'weight': '5 KG',
        'image': Image(
          image: AssetImage('assets/images/gas.png'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Morgan Gin',
        'price': 'KES: 400',
        'weight': '2 KG',
        'image': Image(
          image: AssetImage('assets/images/gas.png'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Jebel Gin',
        'price': 'KES: 700',
        'weight': '5 KG',
        'image': Image(
          image: AssetImage('assets/images/gas.png'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'King Gin',
        'price': 'KES: 400',
        'weight': '2 KG',
        'image': Image(
          image: AssetImage('assets/images/gas.png'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Walker Gin',
        'price': 'KES: 700',
        'weight': '5 KG',
        'image': Image(
          image: AssetImage('assets/images/gas.png'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Gilbeys Gin',
        'price': 'KES: 1200',
        'weight': '6 KG',
        'image': Image(
          image: AssetImage('assets/images/gas.png'),
          height: 50,
          width: 50,
        )
      },
    ];
    return Scaffold(
      backgroundColor: Color(0xFF6DCE75),
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
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.0, color: Colors.white60),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(40))),
                                    child: Center(
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  widget.gasStoreName,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  overflow: TextOverflow.clip,
                                ),
                              ],
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
              flex: 9,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Scrollbar(
                    isAlwaysShown: true,
                    child: ListView(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Pro gas')),
                        SizedBox(height: 5),
                        Container(
                          height: 120,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: suppliersList.length,
                              itemBuilder: (context, index) {
                                final weight = suppliersList[index]['weight'];
                                final price = suppliersList[index]['price'];
                                final image = suppliersList[index]['image'];
                                return Container(
                                  height: double.infinity,
                                  width: 100,
                                  child: Card(
                                      elevation: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: <Widget>[
                                            image,
                                            SizedBox(height: 10),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(weight)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(price)),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Pro gas')),
                        SizedBox(height: 5),
                        Container(
                          height: 120,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: suppliersList.length,
                              itemBuilder: (context, index) {
                                final weight = suppliersList[index]['weight'];
                                final price = suppliersList[index]['price'];
                                final image = suppliersList[index]['image'];
                                return Container(
                                  height: double.infinity,
                                  width: 100,
                                  child: Card(
                                      elevation: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: <Widget>[
                                            image,
                                            SizedBox(height: 10),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(weight)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(price)),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Sea gas')),
                        SizedBox(height: 5),
                        Container(
                          height: 120,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: suppliersList.length,
                              itemBuilder: (context, index) {
                                final weight = suppliersList[index]['weight'];
                                final price = suppliersList[index]['price'];
                                final image = suppliersList[index]['image'];
                                return Container(
                                  height: double.infinity,
                                  width: 100,
                                  child: Card(
                                      elevation: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: <Widget>[
                                            image,
                                            SizedBox(height: 10),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(weight)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(price)),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        ),
                        SizedBox(height: 5),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Total gas')),
                        SizedBox(height: 5),
                        Container(
                          height: 120,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: suppliersList.length,
                              itemBuilder: (context, index) {
                                final weight = suppliersList[index]['weight'];
                                final price = suppliersList[index]['price'];
                                final image = suppliersList[index]['image'];
                                return Container(
                                  height: double.infinity,
                                  width: 100,
                                  child: Card(
                                      elevation: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: <Widget>[
                                            image,
                                            SizedBox(height: 10),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(weight)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(price)),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        ),
                        SizedBox(height: 5),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Shell gas')),
                        SizedBox(height: 5),
                        Container(
                          height: 120,
                          width: double.infinity,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: suppliersList.length,
                              itemBuilder: (context, index) {
                                final weight = suppliersList[index]['weight'];
                                final price = suppliersList[index]['price'];
                                final image = suppliersList[index]['image'];
                                return Container(
                                  height: double.infinity,
                                  width: 100,
                                  child: Card(
                                      elevation: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          children: <Widget>[
                                            image,
                                            SizedBox(height: 10),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(weight)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(price)),
                                          ],
                                        ),
                                      )),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
