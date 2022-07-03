// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart'; /*implement material design*/
import 'package:my_app/hadithlist.dart';
import 'hadithlist.dart';
import 'dua.dart';

void main() {
  runApp(const MyApp()); /*function to run app*/
}

const String page1 = "Time-Table"; /*taking few constant variables*/
const String page2 = "Dua";
const String page3 = "Hadith";
const String title = "Ramadan App";

class MyApp extends StatelessWidget {
  /*took stateless widget so it remains constant*/
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*Describes the part of the user interface represented by this widget.*/
    return const MaterialApp(
      /*MaterialApp is a widget that introduces a number of widgets Navigator, Theme that are required to build a material design app. */
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatefulWidget {
  /*took stateful widget to make it dynamic*/
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); /*Creates the mutable state for this widget at a given location in the tree*/
}

class _MyHomePageState extends State<MyHomePage> {
  /* tab navigation code*/
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late int _currentIndex;
  late Widget _currentPage;

  @override
  void initState() {
    /*initstate() is used to initialize the contents of an already existing object*/
    super.initState();
    _page1 = const Page1();
    _page2 = const Page2();
    _page3 = Page3(changePage: _changeTab);
    _pages = [_page1, _page2, _page3];
    _currentIndex = 0;
    _currentPage = _page1;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*scaffold gives you many basic functionalities, like AppBar, BottomNavigationBar, Drawer, FloatingActionButton*/

      appBar: AppBar(
        title: Text(
          "Ramadan App",
          style: TextStyle(
            /*app bar design*/
            fontSize: 30,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = Color.fromARGB(255, 182, 248, 242),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [Icon(Icons.mosque), Icon(Icons.mosque), Icon(Icons.mosque)],

        backgroundColor: Colors.teal,
      ),
      body: _currentPage,
      /*make bottom naviation bar & navigation through different pages*/
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 182, 248, 242),
          onTap: (index) {
            _changeTab(index);
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: page1,
              icon: Icon(
                Icons.schedule,
                color: Colors.teal,
              ),
            ),
            BottomNavigationBarItem(
              label: page2,
              icon: Icon(Icons.star, color: Colors.teal),
            ),
            BottomNavigationBarItem(
              label: page3,
              icon: Icon(Icons.book, color: Colors.teal),
            ),
          ]),
      drawer: Drawer(
        /*make side drawer */
        child: Container(
          /*child takes a single widget, container is a parent widget that can contain multiple child widgets*/
          margin: const EdgeInsets.only(right: 20.0),
          child: Column(
            children: <Widget>[
              _navigationItemListTitle(page1, 0),
              _navigationItemListTitle(page2, 1),
              _navigationItemListTitle(page3, 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navigationItemListTitle(String title, int index) {
    return ListTile(
      title: Text(
        '$title Page',
        style: TextStyle(color: Colors.teal, fontSize: 22.0),
      ),
      onTap: () {
        Navigator.pop(context);
        _changeTab(index);
      },
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Iftar & Sahri Time",
            style: TextStyle(
              fontSize: 22,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1
                ..color = Color.fromARGB(255, 107, 250, 238),
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            Expanded(
                /*to make columns appear in full screen*/
                flex: 4,
                child: Container(
                  child: Image(
                    image: NetworkImage(
                        'https://media.istockphoto.com/vectors/iftar-time-with-family-during-ramadan-month-muslim-family-ramadan-vector-id1313266272'),
                  ),
                )),
            SizedBox(
              height: 3,
              width: 3,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                          "1st Ramadan \n Iftar : 6.19 PM \n Sahri : 4.27 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "2nd Ramadan \n Iftar : 6.19 PM \n Sahri : 4.26 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "3rd Ramadan \n Iftar : 6.20 PM \n Sahri : 4.24 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "4th Ramadan \n Iftar : 6.20 PM \n Sahri : 4.24 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "5th Ramadan \n Iftar : 6.21 PM \n Sahri : 4.23 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                          "6th Ramadan \n Iftar : 6.21 PM \n Sahri : 4.22 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "7th Ramadan \n Iftar : 6.21 PM \n Sahri : 4.21 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "8th Ramadan \n Iftar : 6.22 PM \n Sahri : 4.20 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "9th Ramadan \n Iftar : 6.22 PM \n Sahri : 4.19 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "10th Ramadan \n Iftar : 6.23 PM \n Sahri : 4.18 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                          "11th Ramadan \n Iftar : 6.23 PM \n Sahri : 4.17 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "12th Ramadan \n Iftar : 6.23 PM \n Sahri : 4.15 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "13th Ramadan \n Iftar : 6.24 PM \n Sahri : 4.24 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "14th Ramadan \n Iftar : 6.24 PM \n Sahri : 4.13 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "15th Ramadan \n Iftar : 6.24 PM \n Sahri : 4.12 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                          "16th Ramadan \n Iftar : 6.25 PM \n Sahri : 4.11 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "17th Ramadan \n Iftar : 6.25 PM \n Sahri : 4.10 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "18th Ramadan \n Iftar : 6.26 PM \n Sahri : 4.09 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "19th Ramadan \n Iftar : 6.26 PM \n Sahri : 4.08 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "20th Ramadan \n Iftar : 6.27 PM \n Sahri : 4.07 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                          "21th Ramadan \n Iftar : 6.27 PM \n Sahri : 4.06 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "22th Ramadan \n Iftar : 6.28 PM \n Sahri : 4.05 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "23th Ramadan \n Iftar : 6.28 PM \n Sahri : 4.05 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "24th Ramadan \n Iftar : 6.29 PM \n Sahri : 4.04 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "25th Ramadan \n Iftar : 6.29 PM \n Sahri : 4.03 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 182, 248, 242)),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Text(
                          "26th Ramadan \n Iftar : 6.29 PM \n Sahri : 4.02 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "27th Ramadan \n Iftar : 6.30 PM \n Sahri : 4.01 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "28th Ramadan \n Iftar : 6.30 PM \n Sahri : 4.00 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "29th Ramadan \n Iftar : 6.31 PM \n Sahri : 3.59 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  ),
                  Expanded(
                    child: Container(
                        child: Text(
                          "30th Ramadan \n Iftar : 6.31 PM \n Sahri : 3.58 AM",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        color: Colors.teal,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 3,
                    width: 3,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3,
              width: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Page2(),
    );
  }
}

class _Page2 extends StatefulWidget {
  @override
  __Page2 createState() => __Page2();
}

class __Page2 extends State<_Page2> {
  final CategoriesScroller categoriesScroller =
      CategoriesScroller(); /*make scroller*/
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = Dua_Data; /*gathers from dua.dart*/
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 170,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.teal,
              boxShadow: [
                BoxShadow(color: Colors.white60, blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
            /*/#meaning text*/
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      post["name"],
                      style: const TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      post["dua"],
                      style: const TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(255, 182, 248, 242)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      post["meaning"],
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context)
        .size; /*MediaQuery provides a higher-level view of the current app's screen size and can also give more detailed information about the device and its layout preferences.*/
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          height: size.height,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "English Year : 2022",
                    style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.5
                          ..color = Color.fromARGB(255, 85, 213, 202),
                        fontSize: 24),
                  ),
                  Text(
                    "Hijri Year : 1443",
                    style: TextStyle(
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1.5
                          ..color = Color.fromARGB(255, 85, 213, 202),
                        fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              AnimatedOpacity(
                /*create scrolling animation*/
                duration: const Duration(milliseconds: 200),
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer ? 0 : categoryHeight,
                    child: categoriesScroller),
              ),
              Expanded(
                  child: ListView.builder(
                      controller: controller,
                      itemCount: itemsData.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        double scale = 1.0;
                        if (topContainer > 0.5) {
                          scale = index + 0.5 - topContainer;
                          if (scale < 0) {
                            scale = 0;
                          } else if (scale > 1) {
                            scale = 1;
                          }
                        }
                        return Opacity(
                          opacity: scale,
                          child: Transform(
                            transform: Matrix4.identity()..scale(scale, scale),
                            alignment: Alignment.bottomCenter,
                            child: Align(
                                heightFactor: 0.7,
                                alignment: Alignment.topCenter,
                                child: itemsData[index]),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesScroller extends StatelessWidget {
  /*design*/
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 248, 242),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Iftar & Sahri Duas",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "3 Items",
                        style: TextStyle(fontSize: 16, color: Colors.teal),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        Text(
                          "Ashra Duas",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "3 Items",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 248, 242),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Other\nDuas",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.teal,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "4 + Items",
                        style: TextStyle(fontSize: 16, color: Colors.teal),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key, required this.changePage}) : super(key: key);
  final void Function(int) changePage;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HadithList(),
    );
  }
}
