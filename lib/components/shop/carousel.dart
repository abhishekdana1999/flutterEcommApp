import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SliderHomeElement extends StatefulWidget {
  SliderHomeElement({Key key}) : super(key: key);

  @override
  _SliderHomeElementState createState() => _SliderHomeElementState();
}

class _SliderHomeElementState extends State<SliderHomeElement> {
  List items = [
    {
      "title": "For Selected Summer Style",
      "image":
          "https://images.unsplash.com/photo-1583861346300-cb4b316528b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1225&q=80",
      "id": "001001",
      "discount": 20,
      "collection": "Summer Collection"
    },
    {
      "title": "For Selected Holi Style",
      "image":
          "https://images.unsplash.com/photo-1583905411970-9cdb72cdd9c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "id": "001002",
      "discount": 40,
      "collection": "Holi Collection"
    },
    {
      "title": "For Selected Winter Style",
      "image":
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
      "id": "001003",
      "discount": 25,
      "collection": "Winder Collection"
    },
    {
      "title": "For Selected Rainy Style",
      "image":
          "https://images.unsplash.com/photo-1535664997465-d49b1978001b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1408&q=80",
      "id": "001004",
      "discount": 30,
      "collection": "Rainy Collection"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new Swiper(
      itemCount: items.length,
      itemBuilder: (BuildContext ctx, int item) {
        return Center(
          child: Container(
            child: Stack(
              children: <Widget>[
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.red.withOpacity(0.3), BlendMode.srcOver),
                  child: Image.network(
                    items.elementAt(item)['image'],
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 0, 0, 10),
                      child: Stack(
                        children: <Widget>[
                          Text(
                            items.elementAt(item)['collection'],
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w100),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            width: 85,
                            child: Divider(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                      child: Text(
                        "${items.elementAt(item)['discount']}% OFF",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 16),
                      child: Text(
                        items.elementAt(item)['title'],
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Poppins",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 20),
                            child: Container(
                              height: 60,
                              width: 60,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                onPressed: () => {},
                                child: new Icon(
                                  EvaIcons.arrowRight,
                                ),
                                color: Colors.green,
                                textColor: Colors.white,
                              ),
                            )))
                  ],
                )
              ],
            ),
          ),
        );
      },
      layout: SwiperLayout.CUSTOM,
      customLayoutOption: new CustomLayoutOption(startIndex: -1, stateCount: 3)
        .addTranslate([
        new Offset(-370.0, -40.0),
        new Offset(0.0, 0.0),
        new Offset(370.0, -40.0)
      ]),
      itemWidth: double.infinity,
      itemHeight: 350.0,
      autoplay: true,
    );
  }
}
