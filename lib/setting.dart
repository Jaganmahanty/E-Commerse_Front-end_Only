import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Setting'),
      ),
      body: Center(
        child: Text(
          'Customize your Online Mart',
          style: TextStyle(
              fontSize: 20, color: Colors.orange, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
