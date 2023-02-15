import 'package:flutter/material.dart';

class FinalSongType extends StatefulWidget {
  const FinalSongType({Key? key}) : super(key: key);

  @override
  State<FinalSongType> createState() => _FinalSongTypeState();
}

class _FinalSongTypeState extends State<FinalSongType> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
     height: 100,
      child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Text("Trending",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize:20,
                      color: Colors.white70,
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: Text("Sad",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize:40,color: Colors.greenAccent
                  ),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                // width: width/3,
                child: Text("Happy",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize:20,
                        color: Colors.white70
                    ),
                ),
            ),
          ],
        ),


      ),
    );
  }
}

