import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_app/hadithdetails.dart';
import 'hadith.dart';

class HadithList extends StatelessWidget {
  const HadithList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hadith List", style: TextStyle(
        fontSize: 22,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..color = Color.fromARGB(255, 107, 250, 238),),), backgroundColor: Colors.teal,

      ),
      body: ListView.builder(itemCount: hadithlist.length,itemBuilder:( context,index) /*creating list item*/
      {Hadith hadith = hadithlist[index];
      return Card(  /*list in card shape*/
        color:Color.fromARGB(255, 182, 248, 242) ,
        child: ListTile(
          leading: Icon(Icons.book_outlined, color: Colors.teal,),
          title: Text(hadith.title, style: TextStyle(color: Colors.teal, fontSize: 20,fontWeight: FontWeight.bold),),
          subtitle: Text(hadith.description),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
          onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => HadithDetail(hadith) ))); 
          },

        ),
      );
       }
    ));
  }
}