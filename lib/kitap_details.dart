import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'model.dart';

import 'MyClipper.dart';

class KitapDetails extends StatefulWidget {
  final bookModel kitap;

  KitapDetails(this.kitap);

  @override
  State<KitapDetails> createState() => _KitapDetailsState();
}

class _KitapDetailsState extends State<KitapDetails> {
  final player = AudioPlayer();

  bool player1 = false;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.kitap.title),
          backgroundColor: Color(0xFF203A43),
          actions: [
            Row(
              children: [
                // Padding(
                //   padding: EdgeInsets.only(right: 10.0),
                //   child: IconButton(
                //       icon: player1
                //           ? Icon(
                //               Icons.pause,
                //               size: 34,
                //             )
                //           : Icon(
                //               Icons.play_arrow,
                //               size: 34,
                //             ),
                //       onPressed: () async {
                       
                //          // player1 ? player.play(AssetSource('a.wav')) :
                //            player.pause();
                //       }),
                // ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: player1 ? IconButton(
                      icon: Icon(
                     Icons.pause ,
                        size: 34,
                      ),
                      onPressed: () async {
                       
                     
                         setState(() {
                           player1 = false;
                           player.pause() ;
                         });
                         
                      }) :
                      IconButton(
                      icon: Icon(
                         Icons.play_arrow,
                        size: 34,
                      ),
                      onPressed: () async {
                       
                        
                         
                         setState(() {
                           player1 = true;
                          player.play(AssetSource(widget.kitap.ses));
                         });
                         
                      }),
                ),
              ],
            )
          ],
        ),
        body: PDF(
          swipeHorizontal: true,
          onError: (error) {
            print(error.toString());
          },
          onPageError: (page, error) {
            print('$page: ${error.toString()}');
          },
        ).fromAsset(widget.kitap.kitap));
  }
}
