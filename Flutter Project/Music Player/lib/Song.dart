import 'package:flutter/material.dart';
import 'package:project1/FinalSongPlaying.dart';
import 'package:project1/back.dart';

class Song extends StatelessWidget {
  final String image;
  final String songName;
  final int time;
  final int lastPlay;
  final String descripsion;
  const Song({Key? key,required this.image,required this.time,required this.lastPlay,required this.songName,required this.descripsion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Playing now...",
          style: TextStyle(color: Colors.white,),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Stack(
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
            children: [
              SongPlaying(image: image,songName: songName,lastPlay: lastPlay,time: time,descripsion: descripsion),
            ],
          ),
        ],
      ),
    );
  }
}


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Search...",
          style: TextStyle(color: Colors.white,),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => back(),));
          },
              padding: EdgeInsets.all(15),
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
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
          Center(
              child: Text("Search Now...",style: TextStyle(color: Colors.white,fontSize: 20,))
          ),
        ],
      ),
    );
  }
}

class Albums extends StatelessWidget {
  const Albums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Albums...",
          style: TextStyle(color: Colors.white,),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => back(),));
          },
              padding: EdgeInsets.all(15),
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
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
          Center(
              child: Text("Albums Is Opening...",style: TextStyle(color: Colors.white,fontSize: 20,))
          ),
        ],
      ),
    );
  }
}

class MoreLikeThis extends StatelessWidget {
  const MoreLikeThis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("More like This...",
          style: TextStyle(color: Colors.white,),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => back(),));
          },
              padding: EdgeInsets.all(15),
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
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
          Center(
              child: Text("More Like This Finding...",style: TextStyle(color: Colors.white,fontSize: 20,))
          ),
        ],
      ),
    );
  }
}




