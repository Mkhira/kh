import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  CardData({this.title, this.subtitle, this.pigtitels, this.pigsubtitel});
  final String title;
  final String subtitle;
  final String pigtitels;
  final String pigsubtitel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: Colors.white,
        shape: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.blue,
          width: 1,
          style: BorderStyle.solid,
        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      pigtitels,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                    Text(
                      pigsubtitel,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10),
                    )
                  ],
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 10),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
