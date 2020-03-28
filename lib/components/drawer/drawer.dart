import 'package:Ecomm/components/home.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';

class DrawerComponent extends StatefulWidget {
  DrawerComponent({Key key}) : super(key: key);

  @override
  _DrawerComponentState createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  List<ScreenHiddenDrawer> items = new List();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: new Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50, left: 20, bottom: 50),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C5103AQFl2NGSGKRlUA/profile-displayphoto-shrink_200_200/0?e=1586995200&v=beta&t=tTuWCCxoqDF2y2S62E9K6HyzjgrEWgOIWY94cxNtRAg'),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Abhishek Sinha",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins",
                                  color: Colors.black87),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 0, top: 5),
                              child: Text(
                                "abhisinha@gmail.com",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                    color: Colors.black54),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0, left: 20, bottom: 0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
                      },
                      leading: Icon(
                        EvaIcons.homeOutline,
                        color: Colors.amber,
                        size: 20,
                      ),
                      title: Text('Home',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                    ListTile(
                      onTap: () => {Navigator.pop(context)},
                      leading: Icon(
                        EvaIcons.keypadOutline,
                        color: Colors.green,
                        size: 20,
                      ),
                      title: Text('Category',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                    ListTile(
                      onTap: () => {Navigator.pop(context)},
                      leading: Icon(
                        EvaIcons.shoppingBagOutline,
                        color: Colors.blue,
                        size: 20,
                      ),
                      title: Text('Orders',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                    ListTile(
                      onTap: () => {Navigator.pop(context)},
                      leading: Icon(
                        EvaIcons.heartOutline,
                        color: Colors.red,
                        size: 20,
                      ),
                      title: Text('Favourite',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                    ListTile(
                      onTap: () => {Navigator.pop(context)},
                      leading: Icon(
                        EvaIcons.headphonesOutline,
                        color: Colors.purple,
                        size: 20,
                      ),
                      title: Text('Support',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                    ListTile(
                      onTap: () => {Navigator.pop(context)},
                      leading: Icon(
                        EvaIcons.logOutOutline,
                        color: Colors.black,
                        size: 20,
                      ),
                      title: Text('Logout',
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    ),
                  ],
                ),
              )
            ],
          )),
        )),
    );
  }
}
