import 'package:flutter/material.dart';

import 'package:project1/FinalSlider.dart';
import 'package:project1/FinalSongList.dart';
import 'package:project1/FinalSongType.dart';
import 'package:project1/Song.dart';
import 'package:project1/back.dart';



class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Products",
            style: TextStyle(color: Colors.white,fontSize: 25),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
          },
              padding: EdgeInsets.all(15),
              icon: Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/images/back'),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FinalSongType(),
                FinalSlider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                      child: Text('You Might Like This',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
                    ),
                    InkWell(

                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MoreLikeThis()));
;                      },
                      child: Container(
                         padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                          child: Row(
                            children: [
                              Text("more",style: TextStyle(fontSize: 15,color: Colors.white,)),
                              Icon(Icons.arrow_forward_ios,size: 15,color: Colors.white),
                            ],
                          ),
                      ),
                    ),
                  ],
                ),
                FinalSongList(),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
