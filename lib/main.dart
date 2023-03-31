import 'package:audioplayers/audioplayers.dart';
import 'package:library_speech/drawer.dart';

import 'model.dart';

import 'MyClipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'kitap_details.dart';

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); // Create a key  64325535
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      drawer: Drawer1(),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          //shrinkWrap: true,
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(top: 40),
                height: height * 46,
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
                          icon: const Icon(
                            Icons.menu,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            if (scaffoldKey.currentState!.isDrawerOpen) {
                              scaffoldKey.currentState!.openEndDrawer();
                            } else {
                              scaffoldKey.currentState!.openDrawer();
                            }
                          },
                        ),
                        const Text(
                          "Book Speech",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            CupertinoIcons.gear,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: ()  {
                                                  },
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
                                "Salam!",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                "Sesli",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Kitaplar",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/images/books_pile.png',
                            fit: BoxFit.fitWidth,
                            width: 170,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                  shrinkWrap: true, // 1st add
                  physics: ClampingScrollPhysics(),
                  itemCount: kitapList.length,
                  itemBuilder: (context, index) {
                    bookModel list = kitapList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return KitapDetails(list);
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  list.title,
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  list.dereje,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              list.surat,
                              width: 160,
                              fit: BoxFit.fitWidth,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
