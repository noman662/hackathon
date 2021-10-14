import 'package:card/Screens/Account.dart';
import 'package:card/Screens/forgot_password.dart';
import 'package:card/Screens/user/main.dart';
import 'package:card/Screens/welcomeslider.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // key for form
  final _formkey = GlobalKey<FormState>();
  // var for email or password
  var email = "";
  var password = "";
  //userLogin Page rout for profile user
  userLogIn() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Usermain()));
  }

  // controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
            "Login to your account",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Account()));
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
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Email"),
                                  labelStyle: TextStyle(fontSize: 20.0),
                                  prefixIcon: Icon(Icons.email),
                                  filled: true,
                                  fillColor: Color(0xffEAEAEA),
                                  hoverColor: Color(0xff575757),
                                  enabled: true,
                                  errorStyle: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                  ),
                                ),
                                //
                                autofocus: false,
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please Enter Email";
                                  } else if (!value.contains("@")) {
                                    return "Please Enter Valid Email";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text('Password'),
                                labelStyle: TextStyle(fontSize: 20.0),
                                prefixIcon: Icon(Icons.lock),
                                filled: true,
                                fillColor: Color(0xffEAEAEA),
                                hoverColor: Color(0xff575757),
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                ),
                              ),
                              //
                              obscureText: true,
                              enableSuggestions: false,
                              autocorrect: false,
                              validator: (_val) {
                                if (_val!.isEmpty) {
                                  return "Please Enter Password";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          color: Colors.black,
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forgot_password()));
                        });
                      },
                      style: ButtonStyle(
                        animationDuration: Duration(milliseconds: 5000),
                        enableFeedback: true,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // button
                  FlatButton(
                    autofocus: true,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(80.0)),
                    child: Ink(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffE800FF),
                            Color(0xff5E86EE),
                            Color(0xff00C9E5),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(80.0)),
                      ),
                      child: Container(
                        constraints: const BoxConstraints(
                            minWidth: 88.0, minHeight: 36.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Login",
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
                        });
                        userLogIn();
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: new Container(
                                child: Divider(
                              color: Colors.black,
                              thickness: 2.0,
                              indent: 10,
                              endIndent: 10,
                            )),
                          ),
                          Text(
                            "OR",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: new Container(
                                child: Divider(
                              color: Colors.black,
                              thickness: 2.0,
                              indent: 10,
                              endIndent: 10,
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Continue With ",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // pictures
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkResponse(
                        hoverColor: Colors.orange,
                        splashColor: Colors.red,
                        focusColor: Colors.yellow,
                        highlightColor: Colors.purple,
                        onTap: () {
                          setState(() {
                            print("Clicked");
                          });
                        },
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Image.asset('assets/loginimages/G.png')),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Image.asset('assets/loginimages/I.jpg')),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Image.asset('assets/loginimages/T.png')),
                      ),
                    ],
                  ),
                  // last text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Dont have an Acoount?",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        autofocus: true,
                        style: ButtonStyle(
                          animationDuration: Duration(milliseconds: 500),
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (Context) => welcomeslider()));
                          });
                        },
                      ),
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
