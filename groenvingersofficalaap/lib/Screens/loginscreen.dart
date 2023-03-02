import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:developer';

Color textFieldBackgroundColor = Colors.grey;
Color textFieldBackgroundColor2 = Colors.grey;

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipPath(
                        clipper: OvalBottomBorderClipper(),
                        child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0),
                                blurRadius: 20.0,
                                spreadRadius: 0.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                            color: Color.fromARGB(255, 0, 158, 40),
                          ),
                        ),
                      ),
                      const SizedBox(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 35),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Color.fromARGB(255, 0, 158, 40),
                              child: Center(
                                child: Icon(
                                  Icons.account_circle_rounded,
                                  size: 100,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  shadows: [
                                    Shadow(
                                      blurRadius: 20.0,
                                      color: Color.fromARGB(110, 0, 0, 0),
                                      offset: Offset(
                                        1.0,
                                        5.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 140),
                            child: Text(
                              'Inloggen',
                              style: TextStyle(
                                color: Color.fromARGB(255, 124, 124, 124),
                                fontSize: 20,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  // Textfield email -----------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: SizedBox(
                      height: 50,
                      width: 280,
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        obscureText: false,
                        controller: usernameController,
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: textFieldBackgroundColor),
                          ),
                          border: const OutlineInputBorder(),
                          labelText: 'Gebruikersnaam',
                        ),
                      ),
                    ),
                  ),

                  // Password text field -------------------
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 50,
                      width: 280,
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: textFieldBackgroundColor2),
                          ),
                          border: const OutlineInputBorder(),
                          labelText: 'Wachtwoord',
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SizedBox(
                      height: 40,
                      width: 280,
                      child: ElevatedButton(
                        key: const Key('loginButton'),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                        onPressed: () {
                          if (usernameController.text.isEmpty) {
                            setState(() {
                              textFieldBackgroundColor = Colors.red;
                            });
                          }
                          if (passwordController.text.isEmpty) {
                            setState(() {
                              textFieldBackgroundColor2 = Colors.red;
                            });
                          }
                          // code to execute if condition2 is true and condition1 is false
                        },
                        child: const Text('Inloggen'),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 117, 117, 117)),
                          ),
                          onPressed: () {},
                          child: const Text('Wachtwoord vergeten?'),
                        ),
                      ],
                    ),
                  ),
                  // container register
                  Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 117, 117, 117)),
                      ),
                      onPressed: () {},
                      child: RichText(
                        text: const TextSpan(
                          text: 'Nog geen account? ',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Registreer hier!',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
