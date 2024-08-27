import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/order.dart';

class tv extends StatefulWidget {
  const tv({super.key});

  @override
  State<tv> createState() => _tvState();
}

class _tvState extends State<tv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Xaiomi TVs")),
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
                      hintText: 'search TVs here',
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
                  'assets/images/imgtvbanner.jpeg',
                  fit: BoxFit.cover,
                ),
                height: 200,
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
                        child: Image.asset('assets/images/igtv1.jpg'),
                      ),
                      Text('Redmi X50'),
                      Text('Smart TV'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('18999 /-'),
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
                        child: Image.asset('assets/images/igtv2.jpg'),
                      ),
                      Text('Redmi X55'),
                      Text('Smart TV'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('19999 /-'),
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
                        child: Image.asset('assets/images/igtv3.jpg'),
                      ),
                      Text('Redmi 32'),
                      Text('Smart TV'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('16499 /-'),
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
                        child: Image.asset('assets/images/igtv4.jpg'),
                      ),
                      Text('Mi 75'),
                      Text('Qled TV'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('23499 /-'),
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
                        child: Image.asset('assets/images/igtv5.jpg'),
                      ),
                      Text('Mi LED 4a '),
                      Text('Pro TV'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('20499 /-'),
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
                        child: Image.asset('assets/images/igtv6.jpg'),
                      ),
                      Text('Xiaomi 5A'),
                      Text('Smart TV'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('15499 /-'),
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
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
