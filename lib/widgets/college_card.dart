import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CollegeCard extends StatefulWidget {
  CollegeCard({
    required this.image,
    required this.image1,
    required this.image2,
    required this.Heading,
    required this.latitude,
    required this.longitude,
    required this.Decription,
  });

  String image;
  String image1;
  String image2;
  String Heading;
  double latitude;
  double longitude;
  String Decription;

  static void navigateTo(double lat, double lng) async {
    var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch ${uri.toString()}';
    }
  }

  @override
  State<CollegeCard> createState() => _CollegeCardState();
}

class _CollegeCardState extends State<CollegeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 237, 167),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (widget.image == widget.image1) {
                  widget.image = widget.image2;
                } else if (widget.image == widget.image2) {
                  widget.image = widget.image1;
                }
              });
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.Heading,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.Decription,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    CollegeCard.navigateTo(widget.latitude, widget.longitude);
                  },
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'Let\'s Go',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
