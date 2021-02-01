import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 140,
                child: Stack(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 120,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Color(0xFFffe0e0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    height: 140,
                    width: 140,
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/png/agnes3.png'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    height: 140,
                    width: MediaQuery.of(context).size.width - 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Agnes Hong",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "One of the professional makeup artist in New York",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            child: Text(
              "Awards and Recognition",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 230,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("4th National Wedding Make-up competition / 3rd Place"),
                Text("National Technical Beauty License"),
                Text("International Make-up Art Fair Diploma"),
                Text("Korea Make-up Artist License"),
                Text("Daehan Nail Artist License"),
                Text("Beauty Teaching License"),
                Text("Lancome Basic Course Certification"),
                Text("Total Beauty License"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
