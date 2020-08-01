import 'package:flutter/material.dart';

class LiquorShop extends StatefulWidget {
  LiquorShop({this.liquorStoreName});
  final String liquorStoreName;
  @override
  _LiquorShopState createState() => _LiquorShopState();
}

class _LiquorShopState extends State<LiquorShop> {
  @override
  Widget build(BuildContext context) {
    var specialityList = [
      {
        'speciality': 'Gilbeys Gin',
        'image': Image(
          image: AssetImage('assets/images/gilbeys.jpg'),
          height: 50,
          width: 50, 
        )
      },
      {
        'speciality': 'Gilbeys Gin',
        'image': Image(
          image: AssetImage('assets/images/gilbeys.jpg'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Gilbeys Gin',
        'image': Image(
          image: AssetImage('assets/images/gilbeys.jpg'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Gilbeys Gin',
        'image': Image(
          image: AssetImage('assets/images/gilbeys.jpg'),
          height: 50,
          width: 50, 
        )
      },
      {
        'speciality': 'Gilbeys Gin',
        'image': Image(
          image: AssetImage('assets/images/gilbeys.jpg'),
          height: 50,
          width: 50,
        )
      },
      {
        'speciality': 'Gilbeys Gin',
        'image': Image(
          image: AssetImage('assets/images/gilbeys.jpg'),
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
                                  widget.liquorStoreName,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
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
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Scrollbar(
                            child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                          padding: const EdgeInsets.all(20.0),
                          mainAxisSpacing: 1.0,
                          crossAxisSpacing: 10.0,
                          children: specialityList.map((specialityList) {
                            return Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    // Navigator.pushNamed(context, Routes.);
                                  },
                                  child: Container(
                                    height: 160,
                                    width: double.infinity,
                                    child: Expanded(
                                      child: Card(
                                        elevation: 0,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              specialityList['image'],
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Flexible(
                                                    child: Text(
                                                  specialityList['speciality'],
                                                  overflow: TextOverflow.ellipsis,
                                                )),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: <Widget>[
                                                  Text(
                                                    '500 ML',
                                                    style: TextStyle(fontSize: 12,
                                                        color: Colors.black54),
                                                  ),

                                                  Text(
                                                    'KES 700',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 25,
                                                width: double.infinity,
                                                child: MaterialButton(
                                                  height: 3,
                                                  minWidth: 3,
                                                  onPressed: () {},
                                                  color: Color(0xFF6DCE75),
                                                  child: Text(
                                                    'Add',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                        color:
                                                            Colors.white),
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius
                                                                  .circular(
                                                                      8))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        )),
                      )
                    ],
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
