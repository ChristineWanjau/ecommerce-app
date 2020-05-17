import 'package:flutter/material.dart';
import 'package:bookbeauty/components/card_product.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title:Center(
          child:Text('ShopApp'),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){
              }
              ),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child:ListTile(
                  title: Text("Total"),
                  subtitle: Text("\$200"),
                ),
    ),
              Expanded(
                child: new MaterialButton(onPressed: (){},
                child: new Text("Check out",style: TextStyle(color: Colors.white) ,),
                  color: Colors.red,
                ),
            )
          ],
        ),
      ),
    );
  }
}
