import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mi_store/login.dart';
import 'package:mi_store/main.dart';
import 'package:form_field_validator/form_field_validator.dart';

class rege extends StatefulWidget {
  const rege({super.key});

  @override
  State<rege> createState() => _regeState();
}

class _regeState extends State<rege> {
  DateTime todaydate = DateTime.now();

  String? gender;
  String male = "male";
  String female = "female";
  String other = "other";

  String? uname;
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Registration'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 150,
                child: Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/milogo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //  Container(height: 30,width)
              Center(
                child: Text("Register Yourself",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 50,
              ),

              Container(
                width: 300,
                child: TextFormField(
                  controller: emailcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your proper E-mail ID";
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
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a strong password';
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
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                width: 300,
                child: TextFormField(
                  controller: passwordcontroller,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password again';
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
                    hintText: "Enter your PassWord again",
                    labelText: "Confirm Password",
                  ),
                  cursorHeight: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your full name";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    //iconColor: Colrs. ,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Name",
                    labelText: "Enter Your Name",
                  ),
                  cursorHeight: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Text("Select Your Gender",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.orange,
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 5),
              Divider(
                  color: Colors.amber, thickness: 2, indent: 40, endIndent: 30),
              //RADIO BUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Radio(
                            value: male,
                            groupValue: gender,
                            onChanged: (value) {
                              gender = value.toString();
                              setState(() {});
                            }),
                        Text('Male', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Radio(
                          //title: Text("MALE"),
                          value: female,
                          groupValue: gender,
                          onChanged: (value) {
                            gender = value.toString();
                            setState(() {});
                          },
                          //activeColor: Colors.teal,
                        ),
                        Text('Female', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Radio(
                            value: other,
                            groupValue: gender,
                            onChanged: (value) {
                              gender = value.toString();
                              setState(() {});
                            }),
                        Text('Other', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("                       Select Your Date Of Birth  ",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.orange,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              SizedBox(height: 15.0),
              //buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        shadowColor: MaterialStateProperty.all(Colors.orange),
                        shape: MaterialStateProperty.all(
                            ContinuousRectangleBorder(
                                side: BorderSide(
                                    color: Colors.orangeAccent,
                                    width: 3,
                                    strokeAlign: StrokeAlign.outside))),
                        surfaceTintColor:
                            MaterialStateProperty.all(Colors.brown),
                        overlayColor: MaterialStateProperty.all(Colors.orange),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white10),
                      ),
                      onPressed: () async {
                        DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1947),
                          lastDate: DateTime(2047),
                          //initialDatePickerMode: DatePickerMode.year,
                        );
                        if (date == null) return;
                        setState(() => todaydate = date);
                        //print("$date");
                      },
                      child: Text(
                        "Select Date",
                        style: TextStyle(fontSize: 14),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        shadowColor: MaterialStateProperty.all(Colors.orange),
                        shape: MaterialStateProperty.all(
                            ContinuousRectangleBorder(
                                side: BorderSide(
                                    color: Colors.orange,
                                    width: 3,
                                    strokeAlign: StrokeAlign.outside))),
                        surfaceTintColor:
                            MaterialStateProperty.all(Colors.brown),
                        overlayColor:
                            MaterialStateProperty.all(Colors.pinkAccent),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white10),
                      ),
                      onPressed: () {},
                      child: Text(
                          '${todaydate.day}/${todaydate.month}/${todaydate.year}',
                          style: TextStyle(fontSize: 15))),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                width: 300,
                child: TextFormField(
                  validator: MultiValidator([
                    MinLengthValidator(10,
                        errorText: "Mobile Number Should Be Of 10 Numbers"),
                  ]),
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.call),
                    //iconColor: Colrs. ,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter a Ph-Number",
                    labelText: "Phone-Number",
                  ),
                  cursorHeight: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                width: 300,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your full address";
                    }
                    return null;
                  },
                  maxLines: 3,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.home),
                    //iconColor: Colrs. ,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Ypur Address",
                    labelText: "Address",
                  ),
                  minLines: 1,
                  cursorHeight: 20,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your pincode";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  autovalidateMode: AutovalidateMode.always,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.pin),
                    //iconColor: Colrs. ,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: "Enter Ypur Pincode",
                    labelText: "PinCode",
                  ),
                  cursorHeight: 20,
                ),
              ),

              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(title: '')));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              '               make sure that you enter every details')));
                    }
                  },
                  child: Text('Continue')),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '                Already have an account ? ',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text('   Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(title: "Homepage")));
                },
                child: Text('Login as a Guest',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.orange,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('All Rights of this application is reserved by '),
                    Text(
                      'Jagan Mahanty',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
