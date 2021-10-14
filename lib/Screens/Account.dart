import 'package:card/Screens/Login.dart';
import 'package:card/Screens/welcomeslider.dart';
import 'package:card/main.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.home),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            setState(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            });
          },
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/welcome.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Icon(
                      Icons.person,
                      size: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Welcome",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        child: Center(
                          child: Text('Log-In'),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        child: Center(
                          child: Text('Sign-Up'),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => welcomeslider()));
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
