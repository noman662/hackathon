import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'Account.dart';
import 'favourite.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  // key for drawer
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // assign key for drawer
      key: _key,
      // now make drawer
      drawer: Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        width: 300,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              // drawer header
              DrawerHeader(
                child: Center(
                  child: InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 70,
                        ),
                        Text("Switch Account")
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Account()));
                      });
                    },
                    splashColor: Colors.blue,
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                height: 4.0,
                color: Colors.black,
                indent: 2,
                endIndent: 2,
              ),
              //
              ListTile(
                leading: Icon(Icons.favorite_rounded),
                title: Text("Favourite"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => favourite()));
                },
              ),
              ListTile(
                leading: Icon(Icons.category_rounded),
                title: Text("News Categories"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // Appbar
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.menu),
                          // onpressed open drawer
                          onPressed: () => _key.currentState!.openDrawer()),
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          setState(() {
                            showSearch(
                                context: context, delegate: DataSearch());
                          });
                        },
                      )
                    ],
                  ),
                ),
                //
                //body
                Column(
                  children: <Widget>[
                    // upper body
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("HeadLines",
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.normal,
                              backgroundColor: Color(0xffFFFFFF),
                            )),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            // 1
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/Ik.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // 2
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/Dollar.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // 3
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/covid19.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // // 4
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/news1.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // 5
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/Kashmeer.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // // 6
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/vaccine.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // // 7
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/HollyWood.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // // 8
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/news.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // // 9
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/images.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                            // // 10
                            Container(
                              width: 200,
                              height: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    topRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      child: Image.asset(
                                        "assets/HomeScreen/image.jpg",
                                        width: 200,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FavoriteButton(
                                        iconSize: 40,
                                        iconDisabledColor: Colors.white,
                                        valueChanged: (_isFavorite) {
                                          print('Is Favorite : $_isFavorite');
                                        },
                                      ),
                                    ),
                                    Positioned(
                                      top: 107,
                                      left: 40,
                                      child: Text(
                                        "Lorem Ipsum",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontStyle: FontStyle.italic),
                                      ),
                                    ),
                                    Positioned(
                                      top: 130,
                                      child: TextButton(
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, con\n\sectetur adipiscing elit.Phasellus\n\laoreet....",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    //chips
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: <Widget>[
                                  Text("Tranding"),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/HomeScreen/fireicon.png'),
                                    backgroundColor: Colors.transparent,
                                    radius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                TextButton(
                                  child: Chip(
                                    label: Text("Sports"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                      animationDuration:
                                          Duration(milliseconds: 500)),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Science & Technology"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                      animationDuration:
                                          Duration(milliseconds: 500)),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("pakistan"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                      animationDuration:
                                          Duration(milliseconds: 500)),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Politics"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                      animationDuration:
                                          Duration(milliseconds: 500)),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Human Resources"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                      animationDuration:
                                          Duration(milliseconds: 500)),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Free Kashmeer"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                      animationDuration:
                                          Duration(milliseconds: 500)),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Finance & Economics"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                    animationDuration:
                                        Duration(milliseconds: 500),
                                  ),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Study"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                    animationDuration:
                                        Duration(milliseconds: 500),
                                  ),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Free-Lancing"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                    animationDuration:
                                        Duration(milliseconds: 500),
                                  ),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Google Ban"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                    animationDuration:
                                        Duration(milliseconds: 500),
                                  ),
                                ),
                                TextButton(
                                  child: Chip(
                                    label: Text("Gaming"),
                                  ),
                                  onPressed: () {},
                                  autofocus: true,
                                  style: ButtonStyle(
                                    animationDuration:
                                        Duration(milliseconds: 500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //
                    //middle body
                    Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        // 1
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //2
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Pandora Papers: Secret wealth and\n\dealings of world leaders exposed",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/2.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),

                        //3
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/3.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //4
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/4.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //5
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/5.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //6
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/6.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //7
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/7.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //8
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/8.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //9
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/9.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        //10
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          elevation: 5,
                          child: Container(
                            height: 110,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 15,
                                        width: 20,
                                        color: Colors.black,
                                        child: Center(
                                          child: Text(
                                            "ABC",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("News",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 22,
                                  child: TextButton(
                                    child: Text(
                                      "Priti Patel to outline measures to curtail\n\disruptive activists' travel",
                                      style: TextStyle(
                                        fontSize: 12.7,
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Positioned(
                                  left: 7,
                                  top: 55,
                                  child: Text(
                                    "Courts will get new powers to stop\n\disruptive activists attending protests,\n\the home secretary will say.",
                                    style: TextStyle(
                                      fontSize: 12.7,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/HomeScreen/centerbody/10.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 60,
                                  right: 5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: FavoriteButton(
                                      iconSize: 40,
                                      iconDisabledColor: Colors.white,
                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    //
                    // footer
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "@Jawan_pakistan_Group",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
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

// Search class
class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Karachi",
    "Lahore",
    "Faisalabad",
    "Rawalpindi",
    "Multan",
    "Hyderabad",
    "Sukkur",
    "Bahawalpur",
    "Islamabad",
    "Mardan",
    "Quetta",
    "Larkana",
    "Sialkot",
    "Sargodha",
    "Peshawar",
  ];

  //
  final recentCities = [
    "Karachi",
    "Bahawalpur",
    "Islamabad",
    "Mardan",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, 'null');
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.location_city),
        title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: TextStyle(color: Colors.black),
                children: [
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
      itemCount: suggestionList.length,
    );
  }
}

//
//
//
