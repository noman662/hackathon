import 'package:card/Screens/Account.dart';
import 'package:card/Screens/Login.dart';
import 'package:flutter/material.dart';

class forgot_password extends StatefulWidget {

  @override
  _forgot_passwordState createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
   final _formkey = GlobalKey<FormState>();
  //
  var email;
  var username;
  var name;
  var password;
  var confirmpassword;
  // controllers
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "Creat Account",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Account()));
            });
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: <Widget>[
                Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Full Name"),
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                            prefixIcon: Icon(Icons.edit),
                            filled: true,
                            fillColor: Color(0xffEAEAEA),
                            hoverColor: Color(0xff575757),
                            enabled: true,
                          ),
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Name";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            name = val;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("username"),
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                            prefixIcon: Icon(Icons.person),
                            filled: true,
                            fillColor: Color(0xffEAEAEA),
                            hoverColor: Color(0xff575757),
                            enabled: true,
                          ),
                          controller: usernameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Username";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            username = val;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Email"),
                            prefixIcon: Icon(Icons.email),
                            filled: true,
                            fillColor: Color(0xffEAEAEA),
                            hoverColor: Color(0xff575757),
                            enabled: true,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                          ),
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Email";
                            } else if (!value.contains("@")) {
                              return "Please Enter Valid Email";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            email = val;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabled: true,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                            label: Text('Type Password'),
                            prefixIcon: Icon(Icons.lock),
                            filled: true,
                            fillColor: Color(0xffEAEAEA),
                            hoverColor: Color(0xff575757),
                          ),
                          controller: passwordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Password";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            password = val;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabled: true,
                            errorStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                            ),
                            label: Text('Confirm Password'),
                            prefixIcon: Icon(Icons.lock),
                            filled: true,
                            fillColor: Color(0xffEAEAEA),
                            hoverColor: Color(0xff575757),
                          ),
                          controller: confirmpasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Valid Password";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            confirmpassword = val;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  autofocus: true,
                  splashColor: Colors.yellow,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(80.0)),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffE800FF),
                          Color(0xff5E86EE),
                          Color(0xFF363C3D),
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(80.0)),
                    ),
                    child: Container(
                      constraints:
                          const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sign-Up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  onPressed: () {
                    // validator for email or password correct or not
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        email = emailController.text;
                        password = passwordController.text;
                        username = usernameController.text;
                        name = nameController.text;
                        confirmpassword = confirmpasswordController.text;
                      });
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already havean Account?"),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                            context,(MaterialPageRoute(builder: (context)=>Login()))
                          );
                        });
                      },
                      child: Text("Login"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}