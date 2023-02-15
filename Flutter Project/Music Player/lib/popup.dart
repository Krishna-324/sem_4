import 'package:flutter/material.dart';

class Popup extends StatelessWidget{
  const Popup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Extra",
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
          Row(
            children: [
              Container(
                padding:EdgeInsets.all(50),
                child: Center(
                  child: Text(
                    'this is fix text that will display in all page',
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
