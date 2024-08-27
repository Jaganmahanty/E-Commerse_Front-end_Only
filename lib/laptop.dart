import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/order.dart';

class laptop extends StatefulWidget {
  const laptop({super.key});

  @override
  State<laptop> createState() => _laptopState();
}

class _laptopState extends State<laptop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Laptops")),
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
                      hintText: 'search laptops here',
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
                  'assets/images/imglapbanner.jpeg',
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
                        child: Image.asset('assets/images/iglap1.jpg'),
                      ),
                      Text('Mi NoteBook'),
                      Text('Ultra'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('45999 /-'),
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
                        child: Image.asset('assets/images/iglap2.jpg'),
                      ),
                      Text('Mi NoteBook'),
                      Text('Pro'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('56999 /-'),
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
                        child: Image.asset('assets/images/iglap3.jpg'),
                      ),
                      Text('Xiaomi Pro'),
                      Text('NoteBook 120G'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('41499 /-'),
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
                        child: Image.asset('assets/images/iglap4.jpg'),
                      ),
                      Text('RedmiBook'),
                      Text('12 SE 120G'),
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
                      Container(
                        height: 130,
                        width: 120,
                        child: Image.asset('assets/images/iglap5.jpg'),
                      ),
                      Text('RedmiBook '),
                      Text('15'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('50499 /-'),
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
                        child: Image.asset('assets/images/iglap6.jpg'),
                      ),
                      Text('RedmiBook'),
                      Text('15 Pro'),
                      SizedBox(
                        height: 10,
                      ),
                      Text('52499 /-'),
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
