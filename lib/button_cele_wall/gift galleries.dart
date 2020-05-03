import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'page3.dart';

class GiftGal extends StatefulWidget {
  @override
  _GiftGalState createState() => _GiftGalState();
}

class _GiftGalState extends State<GiftGal> {
  var giftGalList = [
    {
      "name": "Gift Shopee",
      "picture": "img/1.jpg",
    },
    {
      "name": "Creative Gallary",
      "picture": "img/2.jpg",
    },
    {
      "name": "Fairy Gift Shop",
      "picture": "img/3.jpg",
    },
    {
      "name": "Youth Gift Shop",
      "picture": "img/4.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.00),
        scrollDirection: Axis.horizontal,
        itemCount: giftGalList.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleGiftGal(
            giftGalName: giftGalList[index]['name'],
            giftGalPic: giftGalList[index]['picture'],
          );
        });
  }
}

class SingleGiftGal extends StatelessWidget {
  final giftGalName;
  final giftGalPic;

  //Constructor
  SingleGiftGal({
    this.giftGalName,
    this.giftGalPic,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(10.00),
        padding: EdgeInsets.all(10.00),
        width: 200,
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
        child:Material(
          child:InkWell(
            onTap: ()=>Navigator.of(context)
                .push(new MaterialPageRoute(
              //here we are passing the values of the product to the product details page
                builder: (context)=>new GiftDetails(
                  Gift_Details_name: giftGalName,
                  Gift_Details_picture:giftGalPic ,
                ))),

            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.00),
                  child: Image(
                    image: AssetImage(giftGalPic),
                    height: 110,
                    width: 150,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  giftGalName,
                  style: TextStyle(
                    fontSize: 18.00,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '4.0',
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
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
