import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Column(
            children: <Widget>[
              Text("User ID: noman306"),
              Row(
                children: <Widget>[
                  Text(
                    "Email: Noman.siddique.306@gmail.com",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextButton(onPressed: () => {}, child: Text("Verify Email"))
                ],
              ),
              Text(
                "12/10/2020",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}