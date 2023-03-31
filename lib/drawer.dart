import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:library_speech/main.dart';

import 'info.dart';


class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    
    sendEmail(String recipientemail) async {
      final Email email = Email(
        body: '',
        subject: '',
        recipients: [recipientemail],
        isHTML: false,
      );
      await FlutterEmailSender.send(email);
    }

    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;

    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF203A43),
            ),
            //child: Text("dsa"),
            child: Image.asset('assets/images/lib.png',),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text(
              'Home Page',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.black,
            ),
            title: const Text(
              'Share Us',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () async {
              //shareFile(link[index], title[index]);
              await FlutterShare.share(
                  title: 'Example share',
                  text: 'Library Speech',
                  linkUrl: 'link',
                  chooserTitle: 'Where You Want to Share');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.send,
              color: Colors.black,
            ),
            title: const Text(
              'Contact Us',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              sendEmail('libraryspeech2023@gmail.com');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_rounded,
              color: Colors.black,
            ),
            title: const Text(
              'Info',
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Info(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
