import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/order.dart';

class wearables extends StatefulWidget {
  const wearables({super.key});

  @override
  State<wearables> createState() => _wearablesState();
}

class _wearablesState extends State<wearables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Werables")),
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
                      hintText: 'search wearables',
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
                  'assets/images/imgwebanner.jpeg',
                  fit: BoxFit.cover,
                ),
                height: 175,
                width: 370,
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
                        child: Image.asset('assets/images/igwel1.jpg'),
                      ),
                      Text('Mi Watch'),
                      Text('Revolve Active'),
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
                        child: Image.asset('assets/images/igwel2.jpg'),
                      ),
                      Text('Mi Smart Band'),
                      Text('6 Strap'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('2199 /-'),
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
                        child: Image.asset('assets/images/igwel3.jpg'),
                      ),
                      Text('Redmi Watch'),
                      Text('GPS'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('6499 /-'),
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
                        child: Image.asset('assets/images/igwel4.jpg'),
                      ),
                      Text('Redmi Watch'),
                      Text('5 Lite'),
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
                        child: Image.asset('assets/images/igwel5.jpg'),
                      ),
                      Text('Mi Smart Band'),
                      Text('5 Strap'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('999 /-'),
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
                        child: Image.asset('assets/images/igwel6.jpg'),
                      ),
                      Text('Mi Smart'),
                      Text('Band 5'),
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
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 7,
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
          ],
        ),
      ),
    );
  }
}
