import 'package:flutter/material.dart';
import 'cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink,
        title: Text('Cart'), // Padding(padding: const EdgeInsets.all(20.0),
        // child: Text('Recent products'),),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: new Container(color : Colors.white,
      child: Row(children: <Widget>[
        Expanded(child: ListTile(
          title : Text("Total : "),
          subtitle: Text("\$230")
        ),),

        Expanded(child: MaterialButton(onPressed: (){},
        child: Text("Check Out", style: TextStyle(color : Colors.white),),color: Colors.red,)
        )
      ],
      )
      ),
    );
  }
}