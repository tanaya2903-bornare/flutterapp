import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


import 'page1.dart';

class Place extends StatefulWidget {
  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  var placeList = [
    {
      "name": "Cafe Celebration",
      "picture": "img/1.jpg",
      "type": "Casual / Group",
    },
    {
      "name": "Cafe This",
      "picture": "img/2.jpg",
      "type": "Casual",
    },
    {
      "name": "Cafe That",
      "picture": "img/3.jpg",
      "type": "Casual | Groups",
    },
    {
      "name": "Cafe Hidden",
      "picture": "img/4.jpg",
      "type": "Casual | Groups",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.00),
        scrollDirection: Axis.horizontal,
        itemCount: placeList.length,
        itemBuilder: (BuildContext context, int index) {
          return SinglePlace(
            placeName: placeList[index]['name'],
            placePic: placeList[index]['picture'],
            placeType: placeList[index]['type'],
          );
        });
  }
}

class SinglePlace extends StatelessWidget {
  final placeName;
  final placePic;
  final placeType;

  //Constructor
  SinglePlace({
    this.placeName,
    this.placePic,
    this.placeType,

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
                builder: (context)=>new ProductDetails(
                  product_details_name: placeName,
                  product_details_picture:placePic ,
                  product_details_type:placeType ,
                ))),

            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.00),
                  child: Image(
                    image: AssetImage(placePic),
                    height: 110,
                    width: 150,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  placeName,
                  style: TextStyle(
                    fontSize: 15.00,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  placeType,
                  style: TextStyle(
                    fontSize: 10.00,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '3.0',
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
                      size: 13.0,
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



class Resname {
  Resname(
      {this.image2,
        this.resname,
        this.resPrice,
        this.resTime,
        this.resrating,
        this.restype});

  String image2;
  String resname;
  String restype;
  String resrating;
  String resTime;
  String resPrice;
}

List<Resname> _resinfo = <Resname>[
  Resname(
      image2: 'img/1.jpg',
      resname: 'Snacks Food Point',
      restype: "All types of food",
      resTime: "35",
      resPrice: r"$500 for two",
      resrating: "4.0"),
  Resname(
      image2: 'img/2.jpg',
      resname: 'Donuts Shop',
      restype: "Snacks",
      resTime: "20",
      resPrice: r"$600 for box",
      resrating: "4.2"),
  Resname(
      image2: 'img/3.jpg',
      resname: 'PIZZA FACTORY',
      restype: "only pizza",
      resTime: "15",
      resPrice: r"$100 for one",
      resrating: "5.0"),
  Resname(
      image2: 'img/4.jpg',
      resname: 'Snacks Food Point',
      restype: "All types of food",
      resTime: "35",
      resPrice: r"$500 for two",
      resrating: "4.0"),
  Resname(
      image2: 'img/5.jpg',
      resname: 'Donuts Shop',
      restype: "Snacks",
      resTime: "20",
      resPrice: r"$600 for box",
      resrating: "4.2"),
  Resname(
      image2: 'img/6.jpg',
      resname: 'PIZZA FACTORY',
      restype: "only pizza",
      resTime: "15",
      resPrice: r"$100 for one",
      resrating: "5.0"),
];

class PlaceList extends StatefulWidget {
  @override
  _PlaceListState createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
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
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),

      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(height: 10.0),
          Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Row(children: <Widget>[
                Text(
                  'ALL RESTAURANTS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 100.0),
                FlatButton.icon(
                  onPressed: () => _placeFilter(),
                  icon: Icon(
                    Icons.sort,
                    color: Colors.black,
                    size: 15.0,
                  ),
                  label: Text(
                    'SORT/FILTERS',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ])),
          SizedBox(height: 15.0),

          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 3.0, 0.0),

            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _resinfo.length,
              itemBuilder: (context, index) {
                final resinfo = _resinfo[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: Container(
                        height: 120.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.00),

                        ),
                        child: Image.asset(
                          resinfo.image2,
                          fit: BoxFit.fill,
                        ),
                      ),

                      title: Text(
                        resinfo.resname,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            resinfo.restype,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 23.0,
                          ),
                          Row(children: <Widget>[
                            Text('2 outlets near you'),
                            Icon(Icons.keyboard_arrow_down)
                          ]),
                          Divider(
                            height: 10.0,
                            color: Colors.black,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 15.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 2.0),
                              Text(
                                resinfo.resrating,
                                style: TextStyle(
                                    fontSize: 15.0, color: Colors.black),
                              ),
                              SizedBox(width: 8.0),
                              Icon(
                                Icons.brightness_1,
                                size: 8.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                resinfo.resTime + 'mins',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                              ),
                              SizedBox(width: 8.0),
                              Icon(
                                Icons.brightness_1,
                                size: 8.0,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                r'$500 for two',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 11.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
      //footer
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 2.0,
        child: Material(
          color: Colors.grey[100],
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.00),
            borderSide: BorderSide(
              color: Colors.grey[200],
              width: 1.0,
            ),
          ),
          child: Container(
            height: 50.0,
            width: 50.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'SPARK',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'IT',
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 8.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.pink),
              title: Text(
                'Search',
                style: TextStyle(color: Colors.pink),
              )),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.pink),
            title: Text(
              'My Account',
              style: TextStyle(color: Colors.pink),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _placeFilter() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container();
        });
  }
}
