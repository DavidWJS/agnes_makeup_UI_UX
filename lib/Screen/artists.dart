import 'package:agnes_makeup/Screen/Detail/detail.dart';
import 'package:agnes_makeup/data/artists_data.dart';
import 'package:flutter/material.dart';

class Artists extends StatefulWidget {
  @override
  _ArtistsState createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 40),
        color: Color(0xFFfaf6f6),
        child: ListView.builder(
    physics: ClampingScrollPhysics(),
    itemCount: artistsData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Agnes()));
              },
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                    height: 140,
                    child: Stack(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 120,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width - 60,
                              decoration: BoxDecoration(
                                color: Color(0xFFffe0e0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(right: 140),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      artistsData[index].name,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      artistsData[index].description,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 50, bottom: 40),
                        height: 140,
                        width: 140,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage("${artistsData[index].imagePath}"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
