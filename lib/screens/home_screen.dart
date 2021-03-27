import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // remove back button on bar
        title: Text('Instagram',
            style: TextStyle(color: Colors.grey[850], fontSize: 25.0)),
        backgroundColor: Colors.white,
        centerTitle: false,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  print("Icon search clicked ...");
                },
                child: Icon(
                  Icons.message_outlined,
                  size: 30.0,
                  color: Colors.grey[850],
                ),
              )),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                    child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://source.unsplash.com/random'),
                  ),
                )),

                //2nd Image of Slider
                Container(
                    child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://source.unsplash.com/random'),
                  ),
                )),

                //3rd Image of Slider
                Container(
                    child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://source.unsplash.com/random'),
                  ),
                )),

                //4th Image of Slider
                Container(
                    child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://source.unsplash.com/random'),
                  ),
                )),

                //5th Image of Slider
                Container(
                    child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage('https://source.unsplash.com/random'),
                  ),
                )),
              ],
              options: CarouselOptions(
                height: 180.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.5,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
