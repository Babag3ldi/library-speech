import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_speech/main.dart';

import 'MyClipper.dart';
import 'drawer.dart';

class Info extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width / 100;
    double Height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      drawer: Drawer1(),
      key: scaffoldKey,
      backgroundColor: '#f6f6f6'.toColor(),
      body: SingleChildScrollView(
        child: Column(
          children: [
               ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      padding: EdgeInsets.only(top: 40),
                      height: 380,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xFF0F2027),
                            Color(0xFF203A43),
                            Color(0xFF2C5364),
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                onPressed: () {
                                  if (scaffoldKey.currentState!.isDrawerOpen) {
                              scaffoldKey.currentState!.openEndDrawer();
                            } else {
                              scaffoldKey.currentState!.openDrawer();
                            }
                                },
                                icon: Icon(
                                  Icons.menu,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Info',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20.0),
                      margin: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 20.0),
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF080808),
                            blurRadius: 8,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                "Programma",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                ),
                              ),
                              // Text(
                              //   "Sesli",
                              //   style: TextStyle(
                              //     color: Colors.black,
                              //     fontSize: 15,
                              //   ),
                              // ),
                              Text(
                                "barada",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/images/books_pile.png',
                            fit: BoxFit.fitWidth,
                            width: 150,
                          ),
                        ],
                      ),
                    ),
                        ],
                      ),
                    ),
                  ),
               Center(
                child: Container(
                  width: Width * 95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Library Speech türkmen ykjam elektron programasyna hoş geldiňiz! Siz bu ýerde daşary ýurt dillerinde bolan kitaplary we audio ýazgylaryny tapyp bilersiñiz!",
                        textAlign: TextAlign.justify,
                        //textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 24, color: Color(0xFF203A43),),
                      ),
                      SizedBox(
                        height: Height * 5,
                      ),
                      Text(
                        "Programmany taýýarlan:",
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        height: Height * 2,
                      ),
                      Row(
                        children: [
                          Container(
                              width: Width * 16,
                              height: Height * 8,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.person,
                                size: 40,
                                color: Color(0xFF203A43),
                              )),
                          Text(
                            "   Plany Planyyew ",
                            style: TextStyle(fontSize: 24, color: Color(0xFF203A43),),
                          )
                        ],
                      ),
                      SizedBox(
                        height: Height * 2,
                      ),
                      Text(
                        "Türkmenistanyn Oguz han adyndaky Inžener-tehnologiýalar uniwersitetiniň \n4-nji ýyl talyby",
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: Height * 5,
                      ),
                      Row(
                        children: [
                          Container(
                              width: Width * 14,
                              height: Height * 7,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.phone_android,
                                size: 24,
                                color: Color(0xFF203A43)
                              )),
                          Text(
                            "   Wersiýasy   1.1 ",
                            style: TextStyle(fontSize: 20, color: Color(0xFF203A43)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
