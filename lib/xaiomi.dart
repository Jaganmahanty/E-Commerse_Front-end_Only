import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/order.dart';

class xaiomi extends StatefulWidget {
  const xaiomi({super.key});

  @override
  State<xaiomi> createState() => _xaiomiState();
}

class _xaiomiState extends State<xaiomi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Xiaomi series")),
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
                      hintText: 'search xiaomi phones',
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
                  'assets/images/imgxbanner.jpeg',
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
                        child: Image.asset('assets/images/igxm1.jpg'),
                      ),
                      Text('Xiaomi 11T'),
                      Text('Pro 5G'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('13999 /-'),
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
                        child: Image.asset('assets/images/igxm2.jpg'),
                      ),
                      Text('Xiaomi 11'),
                      Text('Lite NE'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('16999 /-'),
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
                        child: Image.asset('assets/images/igxm3.jpg'),
                      ),
                      Text('Xiaomkk'),
                      Text('11i'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('14499 /-'),
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
                        child: Image.asset('assets/images/igxm4.jpg'),
                      ),
                      Text('Xiaomi 11i'),
                      Text('Hypercharging'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('17499 /-'),
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
                      Text('Bringing'),
                      // Text('More'),
                      Text('New Products'),
                      Text('Soon'),
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
