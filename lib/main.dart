import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mi_store/account.dart';
import 'package:mi_store/coupons.dart';
import 'package:mi_store/gridexa.dart';
import 'package:mi_store/help.dart';
import 'package:mi_store/laptop.dart';
import 'package:mi_store/login.dart';
import 'package:mi_store/order.dart';
import 'package:mi_store/payment.dart';
import 'package:mi_store/powerb.dart';
import 'package:mi_store/redmi.dart';
import 'package:mi_store/rege.dart';
import 'package:mi_store/setting.dart';
import 'package:mi_store/smartapp.dart';
import 'package:mi_store/tablets.dart';
import 'package:mi_store/terms.dart';
import 'package:mi_store/tv.dart';
import 'package:mi_store/wearables.dart';
import 'package:mi_store/xaiomi.dart';
import 'package:mi_store/splashscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: splashscreen(),
    );
  }
}

//const MyHomePage(title: 'Flutter Demo Home Page')
// MyHomePage(title: 'Flutter Demo Home Page')
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My Store"),
      ),
      //appbar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(title: "")));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => account()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => order()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.card_travel,
                          color: Colors.black,
                        ),
                        Text(
                          'Shoping Cart',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => coupons()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wallet_giftcard,
                          color: Colors.black,
                        ),
                        Text(
                          'Offers',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  ClipRRect(
                      child: Image.asset(
                        "assets/images/draweruser1.jpg",
                        height: 70,
                        width: 70,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  Text(
                    '\nWelcome User',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'username@gmail.com',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => account()));
                  },
                  child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.verified_user),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => order()));
                  },
                  child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.card_travel),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => payment()));
                  },
                  child: ListTile(
                    title: Text('Due Payments'),
                    leading: Icon(Icons.payment),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => coupons()));
                  },
                  child: ListTile(
                    title: Text('Coupons'),
                    leading: Icon(Icons.pages),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => coupons()));
                  },
                  child: ListTile(
                    title: Text('Gift Card'),
                    leading: Icon(Icons.card_giftcard),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => help()));
                  },
                  child: ListTile(
                    title: Text('Online Help'),
                    leading: Icon(Icons.help),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => terms()));
                  },
                  child: ListTile(
                    title: Text('Terms & Co.'),
                    leading: Icon(Icons.info_rounded),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => setting()));
                  },
                  child: ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: ListTile(
                    title: Text('Log Out'),
                    leading: Icon(Icons.logout),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 7),
                  Text(
                    'Here is your favourite ones..',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Making quality technology\n accessible to everyonw',
                      style: TextStyle(fontSize: 17))
                ],
              ),
              height: 90,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(9)),
            ),

            SizedBox(
              height: 10,
            ),
            // banner 1

            Container(
              height: 45,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'serch product',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                    //borderside
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.orange),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => laptop()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imglapbanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => redmi()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgrebanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => tv()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgtvbanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => wearables()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgwebanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => xaiomi()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgxbanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => powerb()));
                    },
                    child: Container(
                      height: 170,
                      width: 370,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgpowbanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => smartapp()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgbanner4.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => tablets()));
                    },
                    child: Container(
                      height: 170,
                      width: 350,
                      color: Colors.red,
                      margin: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/imgpadbanner.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "<  Click or Swipe for more products  > ",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              //FIRST ROW OF MOBILES
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => redmi()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 5),
                    child: Container(
                      //FIRST MOBILE
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgredmi.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Redmi\nSeries',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),

                SizedBox(
                  height: 230,
                  width: 15,
                ),
                // here is the second phone
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => xaiomi()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Container(
                      //FIRST MOBILE
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgxiomi.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Xiaomi\nSeries',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              //second ROW OF MOBILES
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => tv()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 5),
                    child: Container(
                      //tv
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgtv.jpeg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Xiaomi\n   TV',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),

                SizedBox(
                  height: 230,
                  width: 15,
                ),
                // laptop
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => laptop()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Container(
                      //FIRST MOBILE
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imglap.jpeg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Xiaomi\nLaptop',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              //Third ROW OF MOBILES

              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tablets()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 5),
                    child: Container(
                      //tv
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgpad.jpeg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Xiaomi\nTablets',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),

                SizedBox(
                  height: 230,
                  width: 15,
                ),
                // laptop
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => powerb()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Container(
                      //FIRST MOBILE
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgbank.jpeg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  'Powerbank\n  Charger',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              //second ROW OF MOBILES
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => wearables()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 25, right: 5),
                    child: Container(
                      //tv
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgwel.jpeg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  '  Xiaomi\nWearables',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),

                SizedBox(
                  height: 230,
                  width: 15,
                ),
                // laptop
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => smartapp()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 5, right: 20),
                    child: Container(
                      //FIRST MOBILE
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2, right: 2, top: 5),
                            child: Container(
                              child: Image.asset(
                                'assets/images/imgsmtap.jpg',
                                fit: BoxFit.cover,
                              ),
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(11),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //ADDING FIRST MOBILE TEXT
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Container(
                              child: Center(
                                child: Text(
                                  '    Smart\nAppliances',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.orange),
                                ),
                              ),
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(11),
                          border: Border.all(width: 2, color: Colors.orange)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ); //scaffold
  }
}
