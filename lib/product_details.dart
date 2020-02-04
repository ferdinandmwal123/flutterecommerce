import 'package:flutter/material.dart';
import 'main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  const ProductDetails(
      {Key key,
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture})
      : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.pink,
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('Shop')), // Padding(padding: const EdgeInsets.all(20.0),
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ======= The First Buttons ==============//
          Row(
            children: <Widget>[
              // ============ The SizeButton
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // ============ TheColor Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                          title: Text("Color"),
                          content: Text("Choose color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: Text("Close"),
                            )
                          ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              // ============ The Quantity Button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Quantity"),
                        content: Text("Choose amount"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                            child: Text("Close"),
                          )
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          // ===== The SecondButtons
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.pink,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy Now"),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.pink,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.pink,
                ),
                onPressed: () {},
              )
            ],
          ),
          Divider(color: Colors.pink,),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text("orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(color: Colors.pink,),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child:  Text("Product name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child:  Text(" brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text(widget.product_detail_name),)
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child:  Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: Text("Poor"),)
            ],
          ),

          Divider(),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text("Similar Products"),
          ),

          //SIMILAR PRODUCTS SECTION
          Container(
            height : 340.0,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}



class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
   
      {
      "name": "Red dress",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2) // number of columns
        ,
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProd(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class SimilarSingleProd   extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  SimilarSingleProd(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price
      });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(children: <Widget>[
                  Expanded(child: 
                  Text (prod_name, style: TextStyle(fontWeight : FontWeight.bold, fontSize : 16.0),),
                  ),
                  Text("\$$prod_price", style: TextStyle(color : Colors.red, fontWeight: FontWeight.bold),)
                ],
                )
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

