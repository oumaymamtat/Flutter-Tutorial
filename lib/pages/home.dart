import 'package:flutter/material.dart';
import 'package:flutter_tutorial/components/horizontal_list.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 5000),
          autoplay: true,
          dotSize: 5.0,
          indicatorBgPadding: 9.0,
          boxFit: BoxFit.cover,
          images: [
            AssetImage("images/c1.jpg"),
            AssetImage("images/m1.jpeg"),
            AssetImage("images/m2.jpg"),
            AssetImage("images/w1.jpeg"),
            AssetImage("images/w3.jpeg"),
            AssetImage("images/w4.jpeg"),
          ]),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("ShoppApp"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              accountName: Text("Oumayma Mtat"),
              accountEmail: Text("oumaymamtat20@gmail.com"),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(
                  Icons.category,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories"),
          ),
          HorizontalList(),
          Divider(),
        ],
      ),
    );
  }
}
