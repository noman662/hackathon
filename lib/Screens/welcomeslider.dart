import 'package:card/Screens/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class welcomeslider extends StatefulWidget {
  @override
  _welcomesliderState createState() => _welcomesliderState();
}

class _welcomesliderState extends State<welcomeslider> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: IntroductionScreen(
            showDoneButton: true,
            showNextButton: true,
            showSkipButton: true,
            dotsDecorator: DotsDecorator(
                size: const Size.square(10.0),
                activeSize: const Size(20.0, 10.0),
                activeColor: Colors.yellow,
                color: Colors.black26,
                spacing: const EdgeInsets.symmetric(horizontal: 5.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0))),
            done: Text("Done"),
            skip: Text("Skip"),
            next: Icon(Icons.arrow_forward),
            onDone: () {
              setState(() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              });
            },
            pages: getPages(),
          ),
        ),
      ),
    );
  }
}


List<PageViewModel> getPages() {
  return [
    PageViewModel(
      image: Image.asset('assets/sliderpic/images.jpg'),
      title: "Lorem Ipsum",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae massa neque. Quisque sit amet posuere ante. Fusce congue urna a luctus hendrerit. In lobortis lacus sit amet massa",
      footer: Text("@JawanPakistan"),
    ),
    PageViewModel(
      image: Image.asset('assets/sliderpic/123.jpg'),
      title: "Lorem Ipsum",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae massa neque. Quisque sit amet posuere ante. Fusce congue urna a luctus hendrerit. In lobortis lacus sit amet massa",
      footer: Text("@JawanPakistan"),
    ),
    PageViewModel(
      image: Image.asset("assets/sliderpic/2.jpg"),
      title: "Lorem Ipsum",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae massa neque. Quisque sit amet posuere ante. Fusce congue urna a luctus hendrerit. In lobortis lacus sit amet massa",
      footer: Text("@JawanPakistan"),
    )
  ];
}
