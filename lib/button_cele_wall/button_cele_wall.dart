import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:flutter_app/button_cele_wall/place.dart';

//CODE FOR CELEBRATE AND ORGANIZE BUTTON
class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 105,
            child: new RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.00)),
              color: Colors.pink,
              splashColor: Colors.lightBlueAccent,
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.local_bar,
                    color: Colors.white,
                  ),
                  new Text(
                    'Celebrate',
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          new SizedBox(
            width: 100,
            child: new RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.00)),
              color: Colors.pink,
              splashColor: Colors.lightBlueAccent,
              padding: const EdgeInsets.all(0.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.business_center,
                    color: Colors.white,
                  ),
                  new Text(
                    'Organize',
                    style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//CODE FOR VIEW ALL BUTTON
class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 15,
            width: 15.0,
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlaceList()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22.00)),
            color: Colors.white10,
            child: Row(
              children: <Widget>[
                Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.pinkAccent,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.pinkAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//CODE FOR CELEBRATION WALL
class CelebrationWall extends StatefulWidget {
  @override
  _CelebrationWallState createState() => _CelebrationWallState();
}
class _CelebrationWallState extends State<CelebrationWall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('img/3.jpg'),
          AssetImage('img/4.jpg'),
          AssetImage('img/5.jpg'),
          AssetImage('img/6.jpg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.pinkAccent,
                  ),
                  onPressed: () {}),
              Text(
                'Tap To View Celebration Wall',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 0.0,
        indicatorBgPadding: 0.0,
      ),
    );
  }
}