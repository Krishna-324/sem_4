import 'dart:async';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:project1/Song.dart';
import 'package:project1/back.dart';
import 'package:project1/popup.dart';

class SongPlaying extends StatefulWidget {
  final String image;
  final String songName;
  final int time;
  final int lastPlay;
  final String descripsion;
  const SongPlaying({Key? key,required this.image,required this.time,required this.lastPlay,required this.songName,required this.descripsion}) : super(key: key);

  @override
  State<SongPlaying> createState() => _SongPlayingState();
}

class _SongPlayingState extends State<SongPlaying> {
  final gradientcolors=List<Color>.from([
    Colors.greenAccent,
    Colors.green,
  ]);
  final iconsGradientColors=List<Color>.from([
    Colors.lightGreenAccent,
    Colors.green,
  ]);
  bool _isPlay = false;
  int progressCount = 0;
  static const countdownDuration = Duration(minutes: 2);
  Duration duration = Duration();
  Timer? timer;

  void startTimer(){
    timer = Timer.periodic(Duration(seconds: 1),(_) => addTime());
  }
  void addTime(){
    setState(() {
      progressCount += 1;
      if(progressCount>=120){
        timer?.cancel();
      }
    });
  }
  void stopTimer(){
    setState(() => timer?.cancel());
  }

  bool countDown =true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      child: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: height/2.2,
                      child: Image(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 325,left: 100,),
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft:Radius.circular(50), ),
                          //color: Colors.white,
                          gradient: LinearGradient(
                            colors: [
                              Colors.black45,
                              Colors.deepPurple.shade900,

                            ],
                          )
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: Row(
                            children: [
                              Text("4.5",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Icon(Icons.star_rate_rounded,color: Colors.yellow),
                            ],
                          ),
                        ),
                    ),
                  ),
                  ],
              ),


            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height/11,
                margin: EdgeInsets.only(top: 25,bottom: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: width/1.7,
                        child: Text(widget.songName,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: width/1.7,
                      child: Text(widget.descripsion,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: LikeButton(
                  animationDuration: Duration(microseconds: 1000),
                ),
              ),
            ],
          ),
          Container(
            height: height/20,
            width: width,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Popup()));
              },
              child: Column(
                children: [
                  Text('this is fix text that will display in evry playing screen '
                      'and this is line of container',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            width: width,
            height: 5,
            child: LinearProgressBar(
              maxSteps: 100,
              progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
              currentStep: progressCount,
              progressColor: Colors.greenAccent,
              backgroundColor: Colors.grey,
            ),
          ),

          Container(
            height: height/8.5,
            width: width,
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("0:00",style: TextStyle(color: Colors.white)),
                InkWell(
                  onTap: () {

                  },
                  child: Icon(Icons.skip_previous_rounded,color: Colors.white,size: 30,),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () {
                  setState(() {
                    if( _isPlay){
                      stopTimer();
                      _isPlay = false;
                    }
                    else{
                      startTimer();
                      _isPlay = true;
                    }
                  });

                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.greenAccent,
                                Colors.green,
                              ],
                            )
                        ),
                    child: Icon(
                        _isPlay?Icons.pause_rounded:Icons.play_arrow_rounded,color: Colors.black,
                        //color: Gradient,
                        size: 30,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Icon(Icons.skip_next_rounded,color: Colors.white,size: 30,),
                ),
                Text("2:00",style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
