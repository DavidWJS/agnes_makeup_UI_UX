import 'package:agnes_makeup/Screen/artists.dart';
import 'package:agnes_makeup/Screen/events.dart';
import 'package:agnes_makeup/Screen/gallery.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final Widget child;
  @override
  Home({Key key, this.child}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Agnes Makeup",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 40),
              isScrollable: true,
              indicatorColor: Color(0xFFffe0e0),
              indicatorWeight: 3.0,
              onTap: (index) {
                setState(() {});
              },
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Artists",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                      "Gallery",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                      "Events",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Artists(),
              Gallery(),
              Events()
            ],
          ),
        )
    );
  }
}
