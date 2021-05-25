import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hypermarket/ui/HomePage.dart';
import 'package:hypermarket/ui/discover.dart';
import 'package:hypermarket/ui/ordersPage.dart';
import 'package:hypermarket/ui/share.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
var _page=0;
final pages=[HomePage(),Discover(),OrdersPage(),Share()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
        color: Colors.indigo,
        backgroundColor: Colors.white,
        buttonBackgroundColor:Colors.indigo ,
        height: 50,
        items: <Widget>[
          Icon(Icons.home,color: Colors.white,),
          Icon(Icons.favorite,color: Colors.white,),
          Icon(Icons.shopping_bag_rounded,color: Colors.white,),
          Icon(Icons.share,color: Colors.white,)

    ],
          onTap: (index){
          setState(() {
            _page=index;
          });

        }

        ),
      body: pages[_page],
    );


    }
}
