import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class back extends StatelessWidget {
  const back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page",
          style: TextStyle(color: Colors.white,),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {

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
          Center(child: Text("page",style: TextStyle(fontSize: 60,color: Colors.white))),
        ],
      ),
    );
  }
}


class RadiantGradientMask extends StatelessWidget {
  final Widget child;
  RadiantGradientMask({required this.child});
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => RadialGradient(
        center: Alignment.center,
        radius: 0.5,
        colors: [Colors.greenAccent, Colors.white70],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}



