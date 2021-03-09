import 'package:bank_card_flutter_app/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:bank_card_flutter_app/imagedata/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int day = 1;
  int price = 130;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "MERCEDES S63 AMG",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 15.0),
            child: Stack(children: [
              Icon(
                Icons.push_pin,
                color: Colors.black,
              ),
              Container(
                height: 10.0,
                width: 10.0,
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              ),
            ]),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 0.8),
              colors: [
                Colors.orange,
                Colors.blueAccent,
                Colors.white,
                Colors.red,
                Colors.deepPurpleAccent,
                Colors.deepOrangeAccent,
              ]),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _swipper(),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.deepPurpleAccent),
                  height: 120.0,
                  width: 240.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 40.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.home_work_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  "$day Day",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "$price\.00",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "\$",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_up_outlined,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (day == 30) {
                                    setState(() {
                                      day = 30;
                                    });
                                  } else if (day >= 30) {
                                    day = 30;
                                  } else {
                                    day = day + 1;
                                    price = price + 100;
                                  }
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "$day",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (day == 1) {
                                    setState(() {
                                      price = 0;
                                      day = 0;
                                    });
                                  } else if (day <= 0 && price <= 0) {
                                    price = 0;
                                    day = 0;
                                  } else {
                                    day = day - 1;
                                    price = price - 100;
                                  }
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.deepPurpleAccent),
                      height: 120.0,
                      width: 140.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                            ),
                            child: Text(
                              "Opportunity",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 20.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.home_work_outlined,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          "7 Day",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "350 \$",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                                size: 40.0,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Container(
                height: 30.0,
                width: 300.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    Text("4.8 |"),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.orangeAccent,
                    ),
                    Text("+370 rent this month"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Specifications >",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _property("Gearbox", "Auto"),
                _property("Power", "305hp"),
                _property("Per 100K", "11.1L"),
              ],
            ),
            SizedBox(
              height: 90.0,
            ),
            Container(
              height: 60.0,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "130.00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Text("Till 30sep"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentPage()));
                    },
                    child: Container(
                      height: 40.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(
                          child: Text(
                        "Rent it",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _swipper() {
  return Container(
    height: 300.0,
    width: double.infinity,
    child: Swiper(
      autoplay: true,
      itemBuilder: (BuildContext context, int index) {
        return new Image.network(
          car[index],
          fit: BoxFit.contain,
        );
      },
      itemCount: car.length,
      pagination: new SwiperPagination(),

      viewportFraction: 0.8,
      scale: 0.9,

      // control: new SwiperControl(),
    ),
  );
}

Widget _property(String firstfeature, String secondfeature) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(30.0)),
      height: 80.0,
      width: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstfeature,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          Text(
            secondfeature,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}
