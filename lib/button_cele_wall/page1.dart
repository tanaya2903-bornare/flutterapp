import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';



class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_type;


  ProductDetails ({
    this.product_details_name,
    this.product_details_picture,
    this.product_details_type,


  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails>{

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
                child: PlaceImage(),
                //child: Image.asset(widget.product_details_picture),
              ) ,

              footer : new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(widget.product_details_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                  ),

                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("${widget.product_details_type}",
                          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent,fontSize: 10.0),
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
                          fontSize: 14.00,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SmoothStarRating(
                        starCount: 5,
                        rating: 4,
                        allowHalfRating: true,
                        size: 14.0,
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
              // === the facilities buttons  ===
              Expanded(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40,
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Facilities"),
                            content: new Text("Choose Facilities"),
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
                  padding: EdgeInsets.only(left: 10.0),
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Facilities",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16.0),
                      )
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),

                ),
              ),

              //      categories  buttons
              Expanded(
                  child: MaterialButton(
                    minWidth: 100.0,
                    height: 40,
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new Text("Categories"),
                              content: new Text("Choose Categories"),
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
                    padding: EdgeInsets.only(left: 10.0),
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Categories",
                          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15.0),
                        ),
                        ),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )
              ),
            ],
          ),

          //  === the second button ===
          Row(
            children: <Widget>[

              // === meals buttons ===
              Expanded(
                child: MaterialButton(
                  minWidth: 100.0,
                  height: 40,
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Meals"),
                            content: new Text("choose meals"),
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
                        child: new Text("Meals",
                          style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18.0),
                        ),
                      ),
                      Expanded(child: new Icon(Icons.arrow_drop_down),
                      ),
                      //new IconButton(icon:Icon( Icons.favorite_border),color:Colors.white, onPressed: (){}),
                    ],
                  ),
                ),
              ),


              // BUTTONS FOR VEG
              Expanded(
                child: MaterialButton(
                  minWidth: 100,
                  height: 40,
                  onPressed: (){},
                  color:Colors.white,
                  textColor: Colors.green,
                  elevation: 0.2,
                  padding: EdgeInsets.only(left: 50.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Veg",
                        style:TextStyle(fontWeight: FontWeight.bold,color: Colors.green,fontSize: 17.0),
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
            title: new Text("Place Details",
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
            title: new Text("Like this Place?                                                               Share it with your friends.",
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
                      padding: EdgeInsets.only(left: 14.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.pinkAccent,
                          ),
                          new Text(
                            'Rate Place',
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

            height: 180.0,
            width: 60.0,

            child: GridTile(
              child: Container(
                color:Colors.white,
                child: Image.asset(widget.product_details_picture),
              ) ,
              footer : new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text("Perfect Place!",
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

          // BUTTON FOR BOOK NOW

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  height: 45,
                  onPressed: (){
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("BOOK NOW"),
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
                  padding: EdgeInsets.only(left: 120.0),
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("BOOK NOW",
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
                  child: new Text("place name - ",style: TextStyle(color: Colors.black),)
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_name),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("place type - ",style: TextStyle(color: Colors.black),)
              ),
              Padding(padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_details_type),
              ),
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text("place condition - ",style: TextStyle(color: Colors.black),)
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
                  child: new Text("place Time - ",style: TextStyle(color: Colors.black),)
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
                padding: EdgeInsets.symmetric(vertical: 11,horizontal: 29),
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
                padding: EdgeInsets.symmetric(vertical: 11,horizontal: 29),
                child:Text("BOOK NOW",
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

class PlaceImage extends StatefulWidget {
  @override
  _PlaceImageState createState() => _PlaceImageState();
}
class _PlaceImageState extends State<PlaceImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('img/1.jpg'),
          AssetImage('img/2.jpg'),
          AssetImage('img/3.jpg'),
          AssetImage('img/4.jpg'),
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