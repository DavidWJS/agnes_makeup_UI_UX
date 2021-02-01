import 'package:agnes_makeup/Screen/Detail/information.dart';
import 'package:agnes_makeup/Screen/Detail/works.dart';
import 'package:flutter/material.dart';

class Agnes extends StatefulWidget {
  @override
  _AgnesState createState() => _AgnesState();
}

class _AgnesState extends State<Agnes> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
            backgroundColor: Color(0xFFffe0e0),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Agnes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              labelPadding: EdgeInsets.symmetric(horizontal: 70),
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              onTap: (index) {
                setState(() {});
              },
              tabs: <Widget>[
                Tab(
                  child: Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Works",
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
              Information(),
              Works(),
            ],
          ),
        )
    );
  }
}
