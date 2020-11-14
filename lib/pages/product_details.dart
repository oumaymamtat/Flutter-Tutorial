import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/home.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailOldPrice;
  final productDetailPrice;
  ProductDetails(
      {this.productDetailName,
      this.productDetailOldPrice,
      this.productDetailPicture,
      this.productDetailPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new HomePage()));
            },
            child: Text("ShoppApp")),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      // body
      body: ListView(
        children: [
          // clicked product displaying
          Container(
            height: 300.0,
            child: GridTile(
              // Display Picture
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailPicture),
              ),
              // Display details
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$ ${widget.productDetailOldPrice} ",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$ ${widget.productDetailPrice} ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          // First Buttons
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("Choose the size"),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Color"),
                          content: Text("Choose the color"),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Quantity"),
                          content: Text("Choose the quantity"),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            ),
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Quantity")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
            ],
          ),

          // Second Buttons
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: Text("Buy now"))),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),
          Divider(),
          // Details de produits
          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Dans les textes non linéaires, généralement tabulaires, il est difficile de parler de paragraphes : la page est composée de tables ou de tableaux, de graphes et d'histogrammes, d'images (de photographies, de dessins, ou de schémas, etc.), où les informations textuelles figurent dans des pavés de type légende, commentaire, note, etc., chaque segment de texte étant plus ou moins indépendant des autres, et rattaché à un élément non textuel. Il vaut mieux dans ce cas parler de pavé(s), et envisager la composition du document sous l'angle de la topologie (de la mise en page(s)).Bibliographie"),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.productDetailName),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand"),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("New"),
              )
            ],
          ),
          // Similar Products
          Container(
            height: 360.0,
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
              child: SimilarSingleProduct(
                prodName: productList[index]["name"],
                prodPicture: productList[index]["picture"],
                prodOldPrice: productList[index]["old_price"],
                prodPrice: productList[index]["price"],
              ));
        });
  }
}

class SimilarSingleProduct extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;
  SimilarSingleProduct(
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
