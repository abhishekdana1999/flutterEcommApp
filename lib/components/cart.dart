import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'drawer/drawer.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List cartItems = [
    {
      "title": "Men Shaded White Printed Polo Collar Slim Fit T-shirt",
      "image":
          "https://images.unsplash.com/photo-1560060141-7b9018741ced?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=799&q=80",
      "id": "001001",
      "price": 15.00,
      "isNew": true,
      "itemCount": 1,
      "originalPrice": 15.00
    },
    {
      "title": "Men Lather Shaded Brown Jacket",
      "image":
          "https://images.unsplash.com/photo-1479064555552-3ef4979f8908?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
      "id": "001002",
      "price": 55.00,
      "isNew": false,
      "itemCount": 1,
      "originalPrice": 55.00
    },
    {
      "title": "Men Blue Washed Lightweight Denim Jacket",
      "image":
          "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80",
      "id": "001003",
      "price": 19.00,
      "isNew": false,
      "itemCount": 1,
      "originalPrice": 19.00
    },
    {
      "title": "Men Grey Colored Formal Jacket",
      "image":
          "https://images.unsplash.com/flagged/photo-1564468781192-f023d514222d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
      "id": "001004",
      "price": 22.00,
      "isNew": true,
      "itemCount": 1,
      "originalPrice": 22.00
    }
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      drawer: DrawerComponent(),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: InkWell(
            onTap: () => {_scaffoldKey.currentState.openDrawer()},
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Icon(
                EvaIcons.menu2Outline,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
          title: Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 25, 0),
            child: Text(
              "CART",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
          )),
      body: Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[
              for (var item in cartItems) createCartListItem(item),
              footer(context)
            ],
          );
        },
      ),
    );
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text("Total",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Text("\$299.00",
                    style: TextStyle(
                        color: Colors.greenAccent.shade700,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
              ),
            ],
          ),
          SizedBox(
            height: 24,
            width: double.infinity,
          ),
          RaisedButton(
            onPressed: () {},
            elevation: 0,
            color: Colors.green,
            padding: EdgeInsets.only(top: 16, left: 90, right: 90, bottom: 16),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text("Checkout",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600)),
          ),
          SizedBox(
            height: 8,
            width: double.infinity,
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }

  createCartListItem(item) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Colors.blue.shade200,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  child: FittedBox(
                    child: Image.network(item['image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(item['title'],
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 6,
                        width: double.infinity,
                      ),
                      Text(
                        "Green M",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Helvetica",
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                NumberFormat.simpleCurrency(locale: "en_IN")
                                    .format(item['price']),
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.green,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                      child: InkWell(
                                    onTap: () => decrementItem(item['id']),
                                    child: Icon(
                                      Icons.remove,
                                      size: 18,
                                      color: Colors.grey.shade700,
                                    ),
                                  )),
                                  Container(
                                      height: 24,
                                      width: 24,
                                      child: Text(
                                        item['itemCount'].toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(height: 2),
                                      )),
                                  Container(
                                      child: InkWell(
                                    onTap: () => incrementItem(item['id']),
                                    child: Icon(
                                      Icons.add,
                                      size: 18,
                                      color: Colors.grey.shade700,
                                    ),
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () => removeProductFromCart(item['id']),
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 10, top: 8),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: Colors.red),
              ),
            ))
      ],
    );
  }

  removeProductFromCart(id) {
    setState(() {
      cartItems.removeWhere((element) => element['id'] == id);
    });
  }

  incrementItem(id) {
    setState(() {
      cartItems.forEach((element) {
        if (element['id'] == id) {
          element['itemCount'] += 1;
          element['price'] += element['originalPrice'];
        }
      });
    });
  }

  decrementItem(id) {
    setState(() {
      cartItems.forEach((element) {
        if (element['id'] == id) {
          if (element['itemCount'] > 1) {
            element['itemCount'] -= 1;
            element['price'] -= element['originalPrice'];
          } else {
            removeProductFromCart(id);
          }
        }
      });
    });
  }
}
