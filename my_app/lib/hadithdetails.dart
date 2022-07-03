// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'hadith.dart';

class HadithDetail extends StatelessWidget {
  final Hadith hadith;
HadithDetail(this.hadith);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(hadith.title),
      ),
      body:Container(
           margin: const EdgeInsets.all(10.0),
        
       color: Color.fromARGB(255, 182, 248, 242,),
        child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(hadith.full, style: TextStyle(fontStyle: FontStyle.italic, fontSize :22.0)
          ),

          
          Padding(
            padding:const EdgeInsets.all(8.0) ,
            // ignore: duplicate_ignore
            child: Text(
              hadith.description,
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(fontStyle: FontStyle.italic, fontSize :14.0

            ),
          ),
          )
          ],

        ),
        ),
      ), 
    );
  }
}

