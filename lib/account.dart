import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Account'),
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
                '           Wait for a while\n we are fatching your data',
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
