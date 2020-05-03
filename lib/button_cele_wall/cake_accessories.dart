import'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  var shopList=[
    {
      "name":"cake shop 1",
      "picture" : "img/1.jpg",
      "type":"Bakery",
      "price":"Rs.200 per person"
    },
    {
      "name":"cake shop 2",
      "picture" : "img/2.jpg",
      "type":"Dessert,Bakery",
      "price":"Rs.200 per person"
    },
    {
      "name":"cake shop 3",
      "picture" : "img/3.jpg",
      "type":"Bakery",
      "price":"Rs.200 per person"
    },
    {
      "name":"cake shop 4",
      "picture" : "img/5.jpg",
      "type":"Desserts,Bakery",
      "price":"Rs.200 per person"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.00),
        scrollDirection: Axis.horizontal,
        itemCount: shopList.length,

        itemBuilder : (BuildContext context, int index)
        {
          return SingleShop(
            shopName: shopList[index]['name'],
            shopPic: shopList[index]['picture'],
            shopType: shopList[index]['type'],
            price: shopList[index]['price'],
          );
        }
    );
  }
}
class SingleShop extends StatelessWidget {
  final shopName;
  final shopPic;
  final shopType;
  final price;
  //Constructor
  SingleShop({
    this.shopName,
    this.shopPic,
    this.shopType,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            margin: EdgeInsets.all(10.00),
            padding: EdgeInsets.all(10.00),
            width: 150,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              //boxShadow: [
              //BoxShadow (
              //color: Colors.black26,
              // offset: Offset(0.0, 2.0),
              // blurRadius: 6.0,
              //),
              // ],
            ),

                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.00),
                      child: Image(
                        image: AssetImage(shopPic),
                        height: 110,
                        width: 150,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    Text(shopName,
                      style: TextStyle(
                        fontSize: 18.00,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Text(shopType,
                      style: TextStyle(
                        fontSize: 15.00,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(price,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.00,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        Text('3.0',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 13.00,
                            fontWeight: FontWeight.normal,
                          ),
                        ),

                        SmoothStarRating(
                          starCount: 5,
                          rating: 3,
                          allowHalfRating: true,
                          size: 15.0,
                          halfFilledIconData: Icons.blur_on,
                          color: Colors.amber,
                          spacing: 0.0,
                          borderColor: Colors.amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );

  }
}
