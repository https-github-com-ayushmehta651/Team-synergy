import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapDirection extends StatelessWidget {
  static void navigateTo(double lat, double lng) async {
   var uri = Uri.parse("google.navigation:q=$lat,$lng&mode=d");
   if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
   } else {
      throw 'Could not launch ${uri.toString()}';
   }
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Center(
          child: TextButton(
            child: Text('press'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.redAccent,
            ),
            onPressed: () {
            
              
   navigateTo(12.908631,77.566189 );
},
          ),
        )),
      ),
    );
  }
}

