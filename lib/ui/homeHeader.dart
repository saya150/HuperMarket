import 'package:flutter/material.dart';

class HomeTop extends StatefulWidget {
  const HomeTop({Key key}) : super(key: key);

  @override
  _HomeTopState createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(

      children:<Widget>[
        Container(

          height: size.height*.10,
          child: Stack(
            children: <Widget>[

              Container(

                height: size.height*10,
                decoration: BoxDecoration(color: Colors.indigo,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                    )
                ),

              ),
              Positioned(
                bottom: 15,
                left: 0,
                right: 0,
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(offset: Offset(0,10),
                              blurRadius: 50,
                              color: Colors.white.withOpacity(0.23)
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.search_rounded),
                      ),
                    )
                 ),
              )
            ],
          ),
        ),
      ],

    );
  }
}
