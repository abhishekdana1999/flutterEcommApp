import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';

class TrendingHomeElement extends StatefulWidget {
  TrendingHomeElement({Key key}) : super(key: key);

  @override
  _TrendingHomeElementState createState() => _TrendingHomeElementState();
}

class _TrendingHomeElementState extends State<TrendingHomeElement> {
  static const List Trendingitems = [
    {
      "title": "Winter Sweeter's",
      "image":
          "https://images.unsplash.com/photo-1560060141-7b9018741ced?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=799&q=80",
      "id": "001001",
      "price": 15.00,
      "isNew": true,
    },
    {
      "title": "Men's Combo",
      "image":
          "https://images.unsplash.com/photo-1479064555552-3ef4979f8908?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "id": "001002",
      "price": 55.00,
      "isNew": false
    },
    {
      "title": "White Top For Women",
      "image":
          "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "id": "001003",
      "price": 19.00,
      "isNew": false
    },
    {
      "title": "Men's Formal's Combo",
      "image":
          "https://images.unsplash.com/flagged/photo-1564468781192-f023d514222d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "id": "001004",
      "price": 22.00,
      "isNew": true
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            for (var item in Trendingitems)
              new GestureDetector(
                onTap: () => {},
                child: new Container(
                  margin: EdgeInsets.all(16),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: new Image.network(
                              item['image'],
                              height: 200.0,
                              width: 180.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          new Positioned(
                            top: 10,
                            right: 10,
                            child: Material(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                              child: Center(
                                child: IconButton(
                                  icon: Icon(EvaIcons.heartOutline),
                                  color: Colors.white,
                                  iconSize: 16,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                          if (item['isNew'] == true)
                            new Positioned(
                              bottom: 0,
                              left: 10,
                              child: Chip(
                                label: Text("New"),
                                backgroundColor: Colors.white,
                              ),
                            )
                        ],
                      )),
                      new Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: new Text(
                                  item['title'],
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  softWrap: true,
                                ),
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: new Text(
                          NumberFormat.simpleCurrency(name: "INR")
                              .format(item['price']),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
          ],
        ));
  }
}
