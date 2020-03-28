import 'package:Ecomm/components/drawer/drawer.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:intl/intl.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class ExplorePage extends StatefulWidget {
  ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List mensProduct = [
    {
      "name": "Men Black Solid Polo Collar Jacket",
      "price": 2999,
      "image":
          "https://images.unsplash.com/photo-1557684387-08927d28c72a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "isPopular": false
    },
    {
      "name": "Men Shaded White Printed Polo Collar Slim Fit T-shirt",
      "price": 439,
      "image":
          "https://images.unsplash.com/photo-1570531138760-8a31a8600de0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "isPopular": true
    },
    {
      "name": "Men Lather Shaded Brown Jacket",
      "price": 1999,
      "image":
          "https://images.unsplash.com/photo-1515664069236-68a74c369d97?ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80",
      "isPopular": true
    },
    {
      "name": "Men Blue Washed Lightweight Denim Jacket",
      "price": 1599,
      "image":
          "https://images.unsplash.com/photo-1521302264200-2a4270c91b04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "isPopular": false
    },
    {
      "name": "Men Grey Colored Formal Jacket",
      "price": 1299,
      "image":
          "https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=687&q=80",
      "isPopular": true
    }
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerComponent(),
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(
                child: Column(children: <Widget>[
                  getSearchBarUI(),
                ]),
              ))),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 16, right: 0),
                        child: TextFormField(
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Search Product",
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black45,
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: Colors.black,
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {},
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Icon(EvaIcons.search, color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  Widget getSearchProductUI(item) {}
}
