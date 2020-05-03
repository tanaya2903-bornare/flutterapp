import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class ShopDetails extends StatefulWidget {
  final Shop_Details_name;
  final Shop_Details_picture;
  final Shop_Details_type;



  ShopDetails ({
    this.Shop_Details_name,
    this.Shop_Details_picture,
    this.Shop_Details_type,


  });

  @override
  _ShopDetailsState createState() => _ShopDetailsState();
}

class _ShopDetailsState extends State<ShopDetails>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Other',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Jalgaon',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 0.0)),
            IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 35.00,
                ),
                onPressed: null),
          ],
        ),
        actions: <Widget>[
          Builder(
            builder: (context) =>
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip: MaterialLocalizations
                      .of(context)
                      .openAppDrawerTooltip,
                ),
          ),
          Builder(
            builder: (context) =>
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  tooltip: MaterialLocalizations
                      .of(context)
                      .openAppDrawerTooltip,
                ),
          ),
        ],
        //titleSpacing: 0.0,
        automaticallyImplyLeading: false,
      ),


      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color:Colors.white,
                child: ShopImage(),
                //child: Image.asset(widget.product_details_picture),
              ) ,

              footer : new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(widget.Shop_Details_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),

                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("${widget.Shop_Details_type}",
                          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                  subtitle: new Row(

                    children: <Widget>[
                      Text(
                        '4.0',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.00,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SmoothStarRating(
                        starCount: 5,
                        rating: 4,
                        allowHalfRating: true,
                        size: 15.0,
                        halfFilledIconData: Icons.blur_on,
                        color: Colors.amber,
                        spacing: 0.0,
                        borderColor: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //  === the first button ===
          Row(
            children: <Widget>[

              // === Gifts buttons ===
              Expanded(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40,
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Cake Types"),
                            content: new Text("choose Types of Cake :-"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),
                              )
                            ],
                          );

                        });
                  },
                  color:Colors.pinkAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Cakes",
                          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 19.0),
                        ),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down),
                      ),
                      //new IconButton(icon:Icon( Icons.favorite_border),color:Colors.white, onPressed: (){}),
                    ],
                  ),
                ),
              ),
              // === the services buttons  ===
              Expanded(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40,
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Accessories"),
                            content: new Text("Choose Accessories which you want"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),)
                            ],
                          );

                        });
                  },

                  color:Colors.white,
                  textColor: Colors.black,
                  padding: EdgeInsets.only(left:0.0),
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Accessories",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14.0),
                      )
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),

                ),
              ),

            ],
          ),

          //  === the second button ===
          Row(
            children: <Widget>[


              Expanded(
                child: MaterialButton(
                  minWidth: 100,
                  height: 40,
                  onPressed: (){},
                  color:Colors.white,
                  textColor: Colors.yellow,
                  elevation: 0.2,
                  padding: EdgeInsets.only(left: 50.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Egg ",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontSize: 17.0),
                      ),
                      ),
                      Expanded(child: new Icon(Icons.check_circle)),

                    ],
                  ),
                ),
              ),

              Expanded(
                child: MaterialButton(
                  minWidth: 100,
                  height: 40,
                  onPressed: (){},
                  color:Colors.white,
                  textColor: Colors.yellow,
                  elevation: 0.2,
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("EggLess",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontSize: 17.0),
                      ),
                      ),
                      Expanded(child: new Icon(Icons.check_circle)),

                    ],
                  ),
                ),
              ),
            ],
          ),

          Divider(color:Colors.grey),
          new ListTile(
            title: new Text("Shop Details",
              style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16.0),
            ),
            subtitle: new Text("-   Address:-near Esser petrol pump,pratap road,jalgoan.                                              "
                "                         -   Contact:- 123456789                                                                               "
                " -   You can make payment Via Cash, Master Card, Visa Card,Debit Cards, Credit Card.                   "
                "Order food online from Cafe Chokolade, Jalgaon Locality & get great offers and super-fast delivery on Zomato."
                "                                      -   Chocolate B110 French Fries70 Paneer Pahadi240 Sizzling Brownie With Ice Cream170 Brownie Piece90 Paneer Sathe200 Vanilla Ice Cream50 Tender ..."),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color:Colors.white,
                  textColor: Colors.black,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("More Details",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14.0),
                      ),
                      ),
                      Expanded(child: new Icon(Icons.keyboard_arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey),

          //CODE FOR SHIRE BUTTONS

          new ListTile(
            title: new Text("Like this Cake Shop?                                                             Share it with your friends.",
            ),
            subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    child: new RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.00)
                      ),
                      color: Colors.white70,
                      splashColor: Colors.lightBlueAccent,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.blueAccent,
                          ),
                          new Text(
                            'Share',
                            style: TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.blueAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Divider(color: Colors.grey),

          // CODE FOR RATINGS AND REVIEWS

          new ListTile(
            title: new Text("Ratings & Reviews",
              style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16.0),
            ),
            subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    child: new RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.00)
                      ),
                      color: Colors.white60,
                      splashColor: Colors.grey,
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.pinkAccent,
                          ),
                          new Text(
                            'Rate Shop',
                            style: TextStyle(
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                                color: Colors.pinkAccent),
                          ),
                        ],

                      ),

                    ),
                  ),
                ]
            ),
          ),

          new Container(

            height: 200.0,
            width: 60.0,

            child: GridTile(
              child: Container(
                color:Colors.white,
                child: Image.asset(widget.Shop_Details_picture),
              ) ,
              footer : new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text("Best Cake Shop!",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Text(
                        '5',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.00,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SmoothStarRating(
                        starCount: 5,
                        rating: 4.5,
                        allowHalfRating: true,
                        size: 15.0,
                        halfFilledIconData: Icons.blur_on,
                        color: Colors.amber,
                        spacing: 0.0,
                        borderColor: Colors.amber,
                      ),

                      Builder(
                        builder: (conmtext) =>
                            IconButton(
                              icon: Icon(
                                Icons.thumb_up,
                                color: Colors.grey,
                              ),
                              onPressed: () => Scaffold.of(context).openEndDrawer(),
                              tooltip: MaterialLocalizations
                                  .of(context)
                                  .openAppDrawerTooltip,
                            ),
                      ),
                      Builder(
                        builder: (context) =>
                            IconButton(
                              icon: Icon(
                                Icons.thumb_down,
                                color: Colors.grey,
                              ),
                              onPressed: () => Scaffold.of(context).openEndDrawer(),
                              tooltip: MaterialLocalizations
                                  .of(context)
                                  .openAppDrawerTooltip,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Divider(),

          // BUTTON FOR BUY NOW

          Row(
            children: <Widget>[

              Expanded(
                child: MaterialButton(
                  height: 45,
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("BUY NOW"),
                            content: new Text("Choose the Payment Option"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child: new Text("close"),)
                            ],
                          );

                        });
                  },

                  color:Colors.pinkAccent,
                  textColor: Colors.white,
                  padding: EdgeInsets.only(left: 130.0),
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("BUY NOW",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22.0),
                      )
                      ),
                    ],
                  ),

                ),
              ),
            ],
          ),

          Divider(color: Colors.grey),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Cake Shop name - ",style: TextStyle(color: Colors.black),)
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.Shop_Details_name),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Cake Shop type - ",style: TextStyle(color: Colors.black),)
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(""),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Cake Shop condition -  ",style: TextStyle(color: Colors.black),)
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("BEST"),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Text('   4.0',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.00,
                  fontWeight: FontWeight.normal,
                ),
              ),

              SmoothStarRating(
                starCount: 5,
                rating: 4,
                allowHalfRating: true,
                size: 15.0,
                halfFilledIconData: Icons.blur_on,
                color: Colors.amber,
                spacing: 0.0,
                borderColor: Colors.amber,
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("Cake Shop Time - ",style: TextStyle(color: Colors.black),)
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text("open-10.00 am to 9.00 pm"),
              ),
            ],
          ),
        ],
      ),

      //FOOTER

      bottomNavigationBar: BottomAppBar(
        child:Container(
          height: 50,
          child:Row(
            children: <Widget>[

              RaisedButton(
                onPressed: (){},
                color: Colors.white,
                splashColor: Colors.pinkAccent,
                padding: EdgeInsets.symmetric(vertical: 11,horizontal: 33),
                child:Text("Add To Cart",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
              RaisedButton(
                onPressed: (){},
                color: Colors.pinkAccent,
                splashColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 11,horizontal: 33),
                child:Text("BUY NOW",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        color:Colors.pinkAccent,
      ),
    );
  }
}


//CODE FOR PLACE IMAGE CAROUSEL

class ShopImage extends StatefulWidget {
  @override
  _ShopImageState createState() => _ShopImageState();
}
class _ShopImageState extends State<ShopImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('img/4.jpg'),
          AssetImage('img/6.jpg'),
          AssetImage('img/3.jpg'),
          AssetImage('img/2.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 8.0,
      ),
    );
  }
}