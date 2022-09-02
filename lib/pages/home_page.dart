import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'feedpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong',
            color: Colors.white,fontSize: 35
          ),
        ),

        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.grey,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.white,
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              label: "Feed"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.search),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square),
              label: "Upload"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart),
              label: "Likes"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.user),
              label: "Account"
          ),
        ],
      ),
    );
  }
}

