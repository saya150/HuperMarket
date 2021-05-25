import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypermarket/ui/drawerWidget.dart';
import 'package:hypermarket/ui/homeHeader.dart';
import 'package:hypermarket/ui/horizontalShopView.dart';
import 'package:hypermarket/ui/productsExplore.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {


    Widget imageCarousel=new Container(
      height:200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image.asset('assets/asset_sale.jpg'),
          Image.asset('assets/sale50off.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotColor: Colors.purple,
        indicatorBgPadding: 0,
      ),
    );

    return Scaffold(
      appBar:AppBar(
        title: Text('LocalKart',style: TextStyle(fontSize: 27),),
        elevation: 0.0,
        actions: [
          new IconButton(icon:Icon(Icons.location_on_rounded,color: Colors.white,), onPressed: null),
          new IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,), onPressed: null),
        ],
      ),
      drawer: DrawerWidget(),
      body: new ListView(
        children: <Widget>[
          HomeTop(),

          //TOP SHOPS NEARBY
          new Padding(padding: const EdgeInsets.all(8.0),
           child: new Row(
               children: <Widget>[
               Text('Top Shops Nearby',
               style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                   SizedBox(width: 150.0,),
                   new Align(
                     child:SizedBox(
                     child: TextButton(
                       onPressed: () {  },
                      child: Row(
                       children:<Widget>[
                        Text(
                        'Change',
                       style: TextStyle(color: Colors.black87),
                       ),
                       Icon(
                       Icons.location_on_rounded,
                       color: Colors.black87,
                          ),
                        ],
                       ),
                      style: TextButton.styleFrom(shape:RoundedRectangleBorder(
                         side: BorderSide(color: Colors.grey, width: 2),
                         borderRadius: BorderRadius.circular(23)), ),
                        ),

                       ),)

                  ],
              ),


          ),
          HorizontalShopView(),

           //SUPER OFFERS
           new Padding(padding: const EdgeInsets.all(8.0),
             child: new Row(
               children: <Widget>[
                 Text('Super Offers',
                     style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                 SizedBox(width: 150.0,),
                 new Align(
                   child: SizedBox(
                     width: 90,
                     child:TextButton(
                     onPressed: () {  },
                     child:
                         Text(
                           'View All',
                           style: TextStyle(color: Colors.black87),
                         ),
                     style: TextButton.styleFrom(shape:RoundedRectangleBorder(
                         side: BorderSide(color: Colors.grey, width: 2),
                         borderRadius: BorderRadius.circular(50))  ),
                     ),),
                 ),
               ],
             ),


           ),
           //CAROUSEl
           imageCarousel,

          //PRODUCTS
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Row(
              children: <Widget>[
                Text('Products',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                SizedBox(width: 185.0,),
                new Align(
                  child: SizedBox(
                    width: 90,
                    child:TextButton(
                      onPressed: () {  },
                      child:
                      Text(
                        'Explore',
                        style: TextStyle(color: Colors.black87),
                      ),
                      style: TextButton.styleFrom(shape:RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(50))  ),
                    ),),
                ),
              ],
            ),


          ),
          ProductsView(),
        ],

      ),


    );
  }
}
