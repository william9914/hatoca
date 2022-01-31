import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List<dynamic> _contacts = [
    {
      'name': 'Lucky Draw',
      'avatar': 'asset/lucky',
    },
    {
      'name': 'Book Test Drive',
      'avatar': 'asset/Book Test Drive',
    },
    {
      'name': 'Book Service',
      'avatar': 'asset/ Book Service',
    },
    {
      'name': 'THS',
      'avatar': 'asset/THS',
    },
    {
      'name': 'Catalog',
      'avatar': 'asset/Catalog',
    },
    {
      'name': 'Calculator',
      'avatar': 'asset/Calculator',
    },
    {
      'name': 'Claim Insurance',
      'avatar': 'asset/Claim Insurance',
    },
    {
      'name': 'Service Berkala',
      'avatar': 'asset/Service Berkala',
    },
    {
      'name': 'Tips & Trick',
      'avatar': 'asset/Tips and Trick',
    },
    {
      'name': 'Trade In',
      'avatar': 'asset/Trade in',
    },
    {
      'name': 'Dealer Location',
      'avatar': 'asset/Dealer Location',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blueGrey[100],
                backgroundImage: AssetImage(_contacts[index]['avatar']),
              ),
              SizedBox(height: 10,),
              Text(_contacts[index]['name'], style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          //code to execute on button press
        },
        child: Icon(Icons.aspect_ratio),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color:Colors.redAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {},),
          ],
        ),
      ),
    );
  }
}