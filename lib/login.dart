import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/main.dart';
import 'package:mi_store/rege.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? uname;

  var emailc = TextEditingController();
  var passwordco = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Login'),
        ),
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                Container(
                  height: 60,
                ),
                Container(
                  height: 150,
                  width: 300,
                  child: Image.asset('assets/images/loginbanner.jpg'),
                ),
                Container(
                  height: 35,
                ),
                Container(
                  height: 500,
                  width: 300,
                  color: Colors.transparent,
                  child: Center(
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your E-mail ID";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.always,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            //iconColor: Colrs. ,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter Your Email ID",
                            labelText: "E-mail",
                          ),
                          cursorHeight: 20,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.always,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password_rounded),
                            //iconColor: Colrs. ,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Enter a PassWord",
                            labelText: "Password",
                          ),
                          cursorHeight: 20,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text('Forgot Your Password',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w600)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              uname = emailc.text;
                              if (formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            MyHomePage(title: '')));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'make sure that you have entered email and password')));
                              }
                            },
                            child: Text('Login')),
                        SizedBox(height: 60),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "You don't have an account ? ",
                              style: TextStyle(fontSize: 17),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => rege()));
                              },
                              child: Text(' Register ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyHomePage(title: "Homepage")));
                            },
                            child: Text(
                              'Login as a guest',
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
