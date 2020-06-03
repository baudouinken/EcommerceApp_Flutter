import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 30,
      "Size": "M",
      "color": "Red",
      "Quantity": 1
    },
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer2.jpeg",
      "price": 40,
      "Size": "M",
      "color": "Black",
      "Quantity": 7
    },
    {
      "name": "Dress",
      "picture": "assets/images/products/dress1.jpeg",
      "price": 85,
      "Size": "M",
      "color": "Blue",
      "Quantity": 9,
    },
    {
      "name": "Dress",
      "picture": "assets/images/products/dress2.jpeg",
      "price": 50,
      "Size": "M",
      "color": "Marron",
      "Quantity": 14,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_product_name: product_on_the_cart[index]['name'],
          cart_product_picture: product_on_the_cart[index]['picture'],
          cart_product_price: product_on_the_cart[index]['price'],
          cart_product_size: product_on_the_cart[index]['Size'],
          cart_product_color: product_on_the_cart[index]['color'],
          cart_product_qty: product_on_the_cart[index]['Quantity'],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_qty;

  Single_cart_product(
      {this.cart_product_name,
      this.cart_product_picture,
      this.cart_product_price,
      this.cart_product_size,
      this.cart_product_color,
      this.cart_product_qty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //======== Leading Section =======
        leading: new Image.asset(
          cart_product_picture,
        ),

        //============ Title Section =======
        title: new Text(
          cart_product_name,
        ),

        //============Subtitle Section ========
        subtitle: new Column(
          children: <Widget>[
            //Row inside the Column
            new Row(
              children: <Widget>[
                //this section ist the Size of the Product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),

                //this section ist the Color of the Product
                Padding(
                  padding: EdgeInsets.fromLTRB(12.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: new Text(
                    cart_product_color,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),

            //this section ist the Price of the Product
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_product_price}",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),

        //======== Trailing Section =======
        trailing: Wrap(
          spacing: 0,
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            new Text("$cart_product_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
