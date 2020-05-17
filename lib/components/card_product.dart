import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size":"XL",
      "color":"Red",
      "quantity":"1",
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50,
      "size":"XL",
      "color":"Red",
      "quantity":"1",
    },
    {
      "name": "Heels",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size":"XL",
      "color":"Red",
      "quantity":"1",
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "price": 50,
      "size":"XL",
      "color":"Red",
      "quantity":"1",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder:(context, index){
          return Single_cart_product(
            cart_prod_name: products_on_the_cart[index]["name"],
            cart_prod_color: products_on_the_cart[index]["color"],
            cart_prod_quantity: products_on_the_cart[index]["quantity"],
            cart_prod_size: products_on_the_cart[index]["size"],
            cart_prod_price: products_on_the_cart[index]["price"],
            cart_prod_picture: products_on_the_cart[index]["picture"],
          );
        },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_size;
  final cart_prod_quantity;

  Single_cart_product(
      {this.cart_prod_name,
        this.cart_prod_picture,
        this.cart_prod_price,
        this.cart_prod_size,
        this.cart_prod_color,
        this.cart_prod_quantity,
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(cart_prod_picture,
        width: 80.0,
        height: 80.0,
        ),
        title: Text(cart_prod_name),
        subtitle: Column(

          //row inside the column
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(17.0,8.0,3.0,8.0),
                child: Text("Color:",
                ),
                ),
                Padding(padding: const EdgeInsets.fromLTRB(17.0,8.0,3.0,8.0),
                  child: Text(cart_prod_color,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),

          //  =================PRODUCT PRICE===============
             Container(
               alignment: Alignment.topLeft,
               child: Text("\Ksh${cart_prod_price}",
               style: TextStyle(fontSize: 16.0,
               fontWeight: FontWeight.bold,
               color: Colors.red
               ),
               ),
             )
              ],
            ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
            Text(cart_prod_quantity),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null),

          ],
        ),
        ),
    );
  }
}
