import 'package:Ecomm/components/drawer/drawer.dart';
import 'package:Ecomm/components/shop/carousel.dart';
import 'package:Ecomm/components/shop/topmensproduct.dart';
import 'package:Ecomm/components/shop/tranding.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>(); // ADD THIS LINE

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0,
        leading: InkWell(
          onTap: () => {_scaffoldKey.currentState.openDrawer()},
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
            child: Icon(
              EvaIcons.menu2Outline,
              color: Colors.white,
              size: 20.0,
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.fromLTRB(0, 25, 25, 0),
            child: Icon(
              EvaIcons.heartOutline,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.fromLTRB(0, 25, 25, 0),
            child: Icon(
              EvaIcons.shoppingBagOutline,
              color: Colors.white,
              size: 20.0,
            ),
          )
        ],
      ),
      drawer: DrawerComponent(),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(child: SliderHomeElement()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 15, left: 25),
                  child: Text(
                    "Trending",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 25, bottom: 15, right: 25),
                    child: FlatButton(
                      child: Text(
                        'SEE ALL',
                        style: TextStyle(fontSize: 12),
                      ),
                      color: Colors.transparent,
                      textColor: Colors.black54,
                      onPressed: () {},
                    )),
              ],
            ),
            Container(child: TrendingHomeElement()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 25, bottom: 15, left: 25),
                  child: Text(
                    "Men's Product",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 25, bottom: 15, right: 25),
                    child: FlatButton(
                      child: Text(
                        'SEE ALL',
                        style: TextStyle(fontSize: 12),
                      ),
                      color: Colors.transparent,
                      textColor: Colors.black54,
                      onPressed: () {},
                    )),
              ],
            ),
            Container(child: TopMensProductHomeElement()),
          ],
        ),
      ),
    );
  }
}
