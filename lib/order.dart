import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Orders'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 360,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/oops.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '     Your product will be show here soon..',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
