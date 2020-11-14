import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 80
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 150,
      "price": 100
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 20,
      "price": 10
    },
    {
      "name": "Pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 70,
      "price": 60
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 90,
      "price": 60
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 150,
      "price": 120
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: (const EdgeInsets.all(8.0)),
              child: SingleProduct(
                prodName: productList[index]["name"],
                prodPicture: productList[index]["picture"],
                prodOldPrice: productList[index]["old_price"],
                prodPrice: productList[index]["price"],
              ));
        });
  }
}

class SingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;
  SingleProduct(
      {this.prodName, this.prodPicture, this.prodOldPrice, this.prodPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prodName,
        child: Material(
          child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                        productDetailName: prodName,
                        productDetailOldPrice: prodOldPrice,
                        productDetailPicture: prodPicture,
                        productDetailPrice: prodPrice,
                      ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    title: Text("\$ $prodPrice",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800)),
                    subtitle: Text("\$ $prodOldPrice",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w800)),
                    leading: Text(
                      prodName,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                child: Image.asset(
                  prodPicture,
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
    );
  }
}
