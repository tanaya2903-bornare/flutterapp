import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutter_app/button_cele_wall/button_cele_wall.dart';
import 'package:flutter_app/button_cele_wall/cake_accessories.dart';
import 'package:flutter_app/button_cele_wall/gift galleries.dart';
import 'package:flutter_app/button_cele_wall/Place.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('img/1.jpg'),
          AssetImage('img/2.jpg'),
          AssetImage('img/3.jpg'),
          AssetImage('img/4.jpg'),
          AssetImage('img/5.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 8.0,
        onImageTap: null,
      ),
    );
    return Scaffold(
      //             APPBAR
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
        //titleSpacing: 0.0,
        automaticallyImplyLeading: false,
      ),

      //      NAVIGATION DRAWER
      endDrawer: Drawer(
        child: new ListView(
          children: <Widget>[
            //          HEADER
            new UserAccountsDrawerHeader(
              accountName: Text('abcd efgh'),
              accountEmail: Text('abcd@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.person,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.pink),
            ),

            //  BODY OF NAVIGATION DRAWER
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Saved'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('My Bookings'),
                leading: Icon(
                  Icons.cake,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Celebration Wall'),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Celebrate Moment'),
                leading: Icon(
                  Icons.local_bar,
                  color: Colors.pink,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Arrange Meeting'),
                leading: Icon(
                  Icons.local_cafe,
                  color: Colors.pink,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.pinkAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text('About Us'),
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.pinkAccent,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 2.0,
        child: Material(
          color: Colors.grey[200],
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

      //          FOOTER
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
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: ListView(
        children: <Widget>[
          imageCarousel,
          //quotesList(),
          Buttons(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(15.00),
                child: new Text(
                  'Place',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ViewAll(),
            ],
          ),

          Container(
            height: 220,
            //width: 50,
            child: Place(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(4.00),
                child: new Text(
                  'Cake And Accessories',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ViewAll(),
            ],
          ),

          Container(
            height: 238,
            //width: 50,
            child: Shops(),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(15.00),
                child: new Text(
                  'Gift Gallaries',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ViewAll(),
            ],
          ),

          Container(
            height: 220,
            //width: 50,
            child: GiftGal(),
          ),

          new Padding(
            padding: const EdgeInsets.all(20.00),
            child: new Text(
              'Celebration Wall',
              style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CelebrationWall(),
        ],
      ),
    );
  }
}