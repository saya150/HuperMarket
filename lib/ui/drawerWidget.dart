import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: new ListView(
          children: <Widget>[

            UserAccountsDrawerHeader(
              accountName: Text('Sayanika Dutta'),
              accountEmail: null,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.pinkAccent,
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                ),
              ),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  child: IconButton(icon:Icon(Icons.person),color: Colors.black87,onPressed: null,),
                  backgroundColor: Colors.white,
                ),
              ),

            ),
            ListTile(
              title: Text('Wishlist'),
              leading: IconButton(icon:Icon(Icons.favorite),onPressed: null,),
            ),
            ListTile(
              title: Text('Feedback'),
              leading: IconButton(icon:Icon(Icons.comment_rounded),onPressed: null,),
            ),
            ListTile(
              title: Text('Logout'),
              leading: IconButton(icon:Icon(Icons.logout),onPressed: null,),
            ),
            ListTile(
              title: Text('About'),
              leading: IconButton(icon:Icon(Icons.help),onPressed: null,),
            ),
          ],
        ),
      );

  }
}
