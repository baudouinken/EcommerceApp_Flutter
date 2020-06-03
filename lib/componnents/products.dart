import 'package:ecommerce/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer2.jpeg",
      "old_price": 50,
      "price": 40,
    },
    {
      "name": "Dress",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": 90,
      "price": 85,
    },
    {
      "name": "Dress",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 60,
      "price": 50,
    },
    {
      "name": "Hills",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Hills",
      "picture": "assets/images/products/hills2.jpeg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Pants",
      "picture": "assets/images/products/pants1.jpg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Pants",
      "picture": "assets/images/products/pants2.jpeg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Shoe",
      "picture": "assets/images/products/shoe1.jpg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Skt",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 40,
      "price": 30,
    },
    {
      "name": "Skt",
      "picture": "assets/images/products/skt2.jpeg",
      "old_price": 40,
      "price": 30,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          ),
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_prod({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              new MaterialPageRoute(
                // here we are passing the values of the product tu the product details page
                builder: (context) => new ProductDetails(
                  product_detail_name: product_name,
                  product_detail_new_price: product_price,
                  product_detail_old_price: product_old_price,
                  product_detail_picture: product_picture,
                ),
              ),
            ),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            product_name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Text(
                          "\$$product_price",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )),
                child: Image.asset(
                  product_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
