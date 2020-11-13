import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageCaption: "T-Shirts",
            imageLocation: "images/cats/tshirt.png",
          ),
          Category(
            imageCaption: "Dress",
            imageLocation: "images/cats/dress.png",
          ),
          Category(
            imageCaption: "Shoes",
            imageLocation: "images/cats/shoe.png",
          ),
          Category(
            imageCaption: "jeans",
            imageLocation: "images/cats/jeans.png",
          ),
          Category(
            imageCaption: "Accessories",
            imageLocation: "images/cats/accessories.png",
          ),
          Category(
            imageCaption: "Formal",
            imageLocation: "images/cats/formal.png",
          ),
          Category(
            imageCaption: "Informal",
            imageLocation: "images/cats/informal.png",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageCaption;
  final String imageLocation;
  Category({this.imageCaption, this.imageLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                imageLocation,
                width: 100.0,
                height: 55.0,
              ),
              subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(imageCaption,
                      style: TextStyle(
                        fontSize: 12.0,
                      ))),
            ),
          ),
        ));
  }
}
