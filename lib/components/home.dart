import 'package:Ecomm/components/cart.dart';

import 'package:Ecomm/components/explore.dart';
import 'package:Ecomm/components/profile.dart';
import 'package:Ecomm/components/shop.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    ShopPage(),
    ExplorePage(),
    CartPage(),
    ProfilePage()
  ];

  
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFEFEFEF),
        body: _children[_currentIndex], // new
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: onTabTapped, // new
          selectedItemColor: Colors.green,
          unselectedItemColor: const Color(0x52508020),
          currentIndex: _currentIndex,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(EvaIcons.shoppingBagOutline ,),
              title: new Text('SHOP' , style: TextStyle( fontFamily: "Poppins",fontSize: 10 , fontWeight: FontWeight.w700),),            
            ),
            new BottomNavigationBarItem(
              icon: new Icon(EvaIcons.bookmarkOutline , ),
              title: new Text('EXPLORE' , style: TextStyle(  fontFamily: "Poppins",fontSize: 10 , fontWeight: FontWeight.w700)),
            ),
            new BottomNavigationBarItem(
                icon: Icon(EvaIcons.shoppingCartOutline , ), 
                title: Text('CART' , style: TextStyle(  fontFamily: "Poppins",fontSize: 10 , fontWeight: FontWeight.w700))
            ),
            new BottomNavigationBarItem(
                icon: Icon(EvaIcons.personOutline , ), 
                title: Text('PROFILE' , style: TextStyle(  fontFamily: "Poppins",fontSize: 10 , fontWeight: FontWeight.w700)))
          ],
        ),
      );

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
