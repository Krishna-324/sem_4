import 'package:flutter/material.dart';
import 'package:project1/SecondScreen.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';


class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(

          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('Assets/images/back'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text("Music",
                      style:TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  Container(
                    child: Text("&",
                      style:TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  Container(
                    child: Text("Podcasts",
                      style:TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold) ,
                    ),
                  ),
                  Container(
                    child: Text("You can play the latest episodes of your favorite shows, get personalized recommendations,  and manage your listening experience.",
                      style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400,),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25,),
                    width: width,
                    child: Row(
                      children: [
                        ConfirmationSlider(
                          text: "Get Started",
                          textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                          onConfirmation: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                SecondScreen(),)
                            );
                          },
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.black,
                        ),
                        // Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
      ),
    );
  }
}
