import 'package:flutter/material.dart';
import 'package:project1/Song.dart';
import 'package:project1/back.dart';

class SongList extends StatefulWidget {
  final String image;
  final String title;
  final String descripsion;
  const SongList({Key? key,required this.title,required this.image,required this.descripsion}) : super(key: key);

  @override
  State<SongList> createState() => _SongListState();
}
class _SongListState extends State<SongList> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Song(image: widget.image,time: 2,lastPlay: 5,songName: widget.title,descripsion: widget.descripsion),));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical: 15),
            child: ClipRRect(
                borderRadius:BorderRadius.circular(20),
                child:Image(image: AssetImage(widget.image),fit: BoxFit.cover,height: 85,width: 90,),
            ),
          ),
          Column(
            children: [
              Container(
                  width:width/2,
                  child: Text(
                    widget.descripsion,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
              ),
              Container(
                padding: EdgeInsets.only(top: 7),
                width: width/2,
                  child: Text(
                      widget.title,
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ),
            ],
          ),
          //Icon(Icons.more_vert),
          InkWell(
              onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => back(),)
            );
          },
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(Icons.more_vert,color: Colors.white,),
              ),
          ),

        ],
      ),
    );
  }
}
class FinalSongList extends StatefulWidget {
  const FinalSongList({Key? key}) : super(key: key);

  @override
  State<FinalSongList> createState() => _FinalSongListState();
}

class _FinalSongListState extends State<FinalSongList> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height/3.5,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SongList(image: "Assets/images/1.jpg",title: "Red",descripsion: "Red album by Taylor Swift"),
          SongList(image: "Assets/images/2.jpg",title: "Midnight",descripsion: "Midnight album by Taylor Swift"),
          SongList(image: "Assets/images/3.jpeg",title: "Reputaion",descripsion: "Reputaion album by Taylor Swift"),
          SongList(image: "Assets/images/4.jpg",title: "love Story",descripsion: "love Story album by Taylor Swift"),
          SongList(image: "Assets/images/5.jpg",title: "Bod Blood",descripsion: "Bod Blood album by Taylor Swift"),
          SongList(image: "Assets/images/6.webp",title: "Lover",descripsion: "Lover album by Taylor Swift"),
          SongList(image: "Assets/images/7.jpg",title: "Fearless",descripsion: "Fearless album by Taylor Swift"),
        ],
      ),
    );
  }
}

