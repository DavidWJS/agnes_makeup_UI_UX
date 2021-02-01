import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

var imgList = [
  "assets/jpg/1.jpg",
  "assets/jpg/2.jpg",
  "assets/jpg/3.jpg",
  "assets/jpg/4.jpg",
  "assets/jpg/5.jpg",
  "assets/jpg/6.jpg",
  "assets/jpg/7.jpg",
  "assets/jpg/8.jpg",
  "assets/jpg/9.jpg",
  "assets/jpg/10.jpg",
  "assets/jpg/11.jpg",
  "assets/jpg/12.jpg",
  "assets/jpg/13.jpg",
  "assets/jpg/14.jpg",
  "assets/jpg/15.jpg",
  "assets/jpg/16.jpg",
  "assets/jpg/17.jpg",
  "assets/jpg/18.jpg",
  "assets/jpg/19.jpg",
  "assets/jpg/20.jpg",
  "assets/jpg/21.jpg",
  "assets/jpg/22.jpg",
  "assets/jpg/23.jpg",
  "assets/jpg/24.jpg",
];

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialogFunc(context, imgList[index]);
            },
            child: Card(
              color: Color(0xFFfaf6f6),
              margin: EdgeInsets.all(5),
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset(imgList[index], fit: BoxFit.contain,),
              )
            ),
          );
        },
      ),
    );
  }
}

showDialogFunc(context, img) {
  return showDialog(
    context: context,
    builder: (context){
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: 400,
            child: ClipRRect(
              child: Image.asset(img,
              ),
            ),
          ),
        ),
      );
    }
  );
}
