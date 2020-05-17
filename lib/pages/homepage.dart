import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports

import 'package:bookbeauty/components/horizontal_listview.dart';
import 'package:bookbeauty/components/products.dart';
import 'package:bookbeauty/pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage("images/w4.jpeg"),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,),onPressed: null),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>(new Cart())));
          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('Christine Wambui'),
              accountEmail: Text('wanjauchristine0@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            //body of drawer
            InkWell(
              onTap:(){},
              child:ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:(){},
              child:ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:(){},
              child:ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child:ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.red),
              ),
            ),
            InkWell(
              onTap:(){},
              child:ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite,color: Colors.red),
              ),
            ),

            Divider(),

            InkWell(
              onTap:(){},
              child:ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.blue),
              ),
            ),
            InkWell(
              onTap:(){},
              child:ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //carousel
          image_carousel,
          //padding widget
          new Padding(padding: EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Categories')),),

          //Horizontal list view begins here
          HorizontalList(),

          new Padding(padding: EdgeInsets.all(20.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Recent products')),),

          Flexible(child: Products()
          ),
        ],
      ),
    );
  }
}


