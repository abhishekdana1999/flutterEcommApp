import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopMensProductHomeElement extends StatefulWidget {
  TopMensProductHomeElement({Key key}) : super(key: key);

  @override
  _TopMensProductHomeElementState createState() =>
      _TopMensProductHomeElementState();
}

class _TopMensProductHomeElementState extends State<TopMensProductHomeElement> {
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

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[for (var item in mensProduct) getListItem(item)],
      ),
    );
  }

  getListItem(item) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: InkWell(
              onTap: () => {},
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Container(
                    //   decoration: BoxDecoration(shape: BoxShape.circle),
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(25),
                    //     child: Image.network(
                    //       item['image'],
                    //       fit: BoxFit.cover,
                    //       height: 80,
                    //       width: 80,
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: <Widget>[
                    //       AutoSizeText(
                    //         item['name'],
                    //         style: TextStyle(
                    //             color: Color(0xFf555555),
                    //             fontSize: 14,
                    //             fontWeight: FontWeight.bold,
                    //             fontFamily: "Poppins"),
                    //         overflow: TextOverflow.ellipsis,
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: 5),
                    //         child: new Text(
                    //           NumberFormat.simpleCurrency(name: "INR")
                    //               .format(item['price']),
                    //           textAlign: TextAlign.center,
                    //           overflow: TextOverflow.ellipsis,
                    //           maxLines: 5,
                    //           style: TextStyle(
                    //             fontSize: 14,
                    //             color: Colors.grey,
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        item['image'],
                        fit: BoxFit.cover,
                        width: 76,
                        height: 76,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              item['name'],
                              style: TextStyle(
                                  color: Color(0xFf555555),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 8)),
                            Text(
                              NumberFormat.simpleCurrency(name: "INR")
                                  .format(item['price']),
                              style: TextStyle(
                                color: Color(0xFF8E8E93),
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
