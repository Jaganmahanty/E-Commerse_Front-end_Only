import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/order.dart';

class powerb extends StatefulWidget {
  const powerb({super.key});

  @override
  State<powerb> createState() => _powerbState();
}

class _powerbState extends State<powerb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Powerbank & Charger")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                height: 40,
                width: 350,
                margin: EdgeInsets.only(top: 5),
                child: TextField(
                  cursorHeight: 20,
                  decoration: InputDecoration(
                      hintText: 'search powerbanks',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(color: Colors.orange, width: 2),
                        //borderside
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange,
                      ) //OutlineInputBorder
                      ), //Inputdecoration
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 5),
              child: Container(
                child: Image.asset(
                  'assets/images/imgpowbanner.jpeg',
                  fit: BoxFit.cover,
                ),
                height: 175,
                width: 390,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(width: 1, color: Colors.black),
                  /// borderRadius: BorderRadius.circular(5)
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb1.jpg'),
                      ),
                      Text('Mi Hypersonic'),
                      Text('20000 MAH'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('3999 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb2.jpg'),
                      ),
                      Text('Redmi Power'),
                      Text('10000 MAH'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1399 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb3.jpg'),
                      ),
                      Text('Mi Bank'),
                      Text('13000 MAH'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1499 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb4.jpg'),
                      ),
                      Text('Mi PocketBnk'),
                      Text('5000 MAH'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1199 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb5.jpg'),
                      ),
                      Text('Xiaomi 120W'),
                      Text('HyperCharge'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1199 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb6.jpg'),
                      ),
                      Text('Redmi 22.5w'),
                      Text('Fast Charger'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('499 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/igpb7.jpg'),
                      ),
                      Text('Mi 30W'),
                      Text('WireLess'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('1499 /-'),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => order()));
                          },
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 70),
                      Text('View More'),
                      // Text('More'),
                      Text('Similar'),
                      Text('Products'),
                      SizedBox(
                        height: 10,
                      ),
                      Icon(Icons.next_plan)
                    ],
                  ),
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 200,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.black)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
