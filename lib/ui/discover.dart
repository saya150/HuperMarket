import 'package:flutter/material.dart';
import 'package:hypermarket/ui/drawerWidget.dart';
import 'package:hypermarket/ui/homeHeader.dart';

class Discover extends StatefulWidget {
  const Discover({Key key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      title: Text('Diacover',style: TextStyle(fontSize: 27),),
      elevation: 0.0,
      actions: [
        new IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null),
      ],
    ),
      drawer: DrawerWidget(),

      body: new ListView(
        children: <Widget>[
          HomeTop(),
        ],
      ),
    );
  }
}
