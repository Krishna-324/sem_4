import 'package:flutter/material.dart';
import 'package:project1/Song.dart';
import 'package:project1/back.dart';

class SliderWidget extends StatefulWidget {
  final String songName;
  final int time;
  final String image;
  final int lastPlay;

  const SliderWidget({Key? key,required this.songName,required this.image,required this.time,required this.lastPlay}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Albums()));
        },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.black,),
        width: width/1.5,
        height: height,
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: Image(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${widget.songName}",
                            style: TextStyle(fontSize: 15,color: Colors.greenAccent,),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "${widget.lastPlay} days ago/${widget.time} min",
                            style: TextStyle(fontSize: 12,color: Colors.grey,),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5,),
                      child: InkWell(
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[900],
                              child: Icon(Icons.play_arrow_rounded,color: Colors.greenAccent,size: 25)
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                Song(image: widget.image,time: widget.time,lastPlay: widget.lastPlay,songName: widget.songName,descripsion: "song descripstion"),));}
                        ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FinalSlider extends StatefulWidget {
  const FinalSlider({Key? key}) : super(key: key);

  @override
  State<FinalSlider> createState() => _FinalSliderState();
}

class _FinalSliderState extends State<FinalSlider> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      //height: 250,
      //width: 450,
      height:height/3,
      width: width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SliderWidget(image: "Assets/images/1.jpg",songName: "Red",lastPlay: 2,time: 2,),
          SliderWidget(image: "Assets/images/2.jpg",songName: "Midnight",lastPlay: 3,time:3,),
          SliderWidget(image: "Assets/images/3.jpeg",songName: "Reputaion",lastPlay: 4,time: 4,),
          SliderWidget(image: "Assets/images/4.jpg",songName: "Love Story",lastPlay: 5,time: 2,),
          SliderWidget(image: "Assets/images/5.jpg",songName: "Bad Blood",lastPlay: 4,time: 4,),
          SliderWidget(image: "Assets/images/6.webp",songName: "Lover",lastPlay: 1,time: 5,),
          SliderWidget(image: "Assets/images/7.jpg",songName: "Fearless",lastPlay: 4,time: 4,),
        ],
      ),
    );  }
}
