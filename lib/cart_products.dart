import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size":"M",
      "color": "Red",
      "quantity": 1,
    },
      {
      "name": "Shoes",
      "picture": "images/products/hills1.jpeg",
      "price": 50,
      "size":"7",
      "color": "Red",
      "quantity": 1,
    },
  
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnTheCart.length,
      itemBuilder: (context, index){
       return  SingleCartProduct(
         cart_prod_name: productsOnTheCart[index]["name"],
         cart_prod_color: productsOnTheCart[index]["color"],
         cart_prod_qty: productsOnTheCart[index]["quantity"],
         cart_prod_size: productsOnTheCart[index]["size"],
         cart_prod_price: productsOnTheCart[index]["price"],
         cart_prod_picture: productsOnTheCart[index]["picture"],
       );
      });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  const SingleCartProduct({this.cart_prod_name, this.cart_prod_picture, this.cart_prod_price, this.cart_prod_size, this.cart_prod_color, this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture, width: 80.0, height: 80.0),
        title : Text(cart_prod_name),
        subtitle: Column(children: <Widget>[
          Row(children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(0.0),
               child: Text("Size:"),
             ),
              Padding(
               padding: const EdgeInsets.all(4.0),
               child: Text(cart_prod_size, style: TextStyle(color: Colors.red),),
             ),
             Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
             child: Text("Color:"),
             ),
             Padding(padding: const EdgeInsets.all(4.0),
             child: Text(cart_prod_color, style: TextStyle(color: Colors.red),),
             )
          ],
          ),

            Container(
              alignment: Alignment.topLeft,
              child: Text("\$$cart_prod_price", style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.red
              ),
              )
            )
          
        ],
        ),
        trailing: FittedBox(
            fit: BoxFit.fill,
            child: Column(children:<Widget>[
          IconButton(icon: Icon(Icons.arrow_drop_up),iconSize: 38, onPressed: (){},),
          Text("$cart_prod_qty", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          IconButton(icon: Icon(Icons.arrow_drop_down),iconSize: 38, onPressed: (){},)

        ]
        ),
        ),
      ),
    );
  }
  
}