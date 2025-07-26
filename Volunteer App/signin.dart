
import 'package:flutter/material.dart';

import 'Home.dart';

void main() {
  runApp(const Signin());
}

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(66, 223, 28, 93),
          elevation: 100,
          title: Text("Sign Up"),
          centerTitle: true,
        ),
        body: Center( // Center the Column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1st email, 2nd username, 3rd password
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color:  const Color.fromARGB(255, 240, 143, 188),
                  borderRadius: BorderRadius.circular(40),
                ),
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 143, 188),
                  borderRadius: BorderRadius.circular(40),
                ),
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color:  const Color.fromARGB(255, 240, 143, 188),
                  borderRadius: BorderRadius.circular(40),
                ),
                width: 360,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed:(){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => MyApp()),
  );
                  
                },
                child: Text(
                  "Sign up",

                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all( const Color.fromARGB(255, 218, 109, 160)),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 100)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
