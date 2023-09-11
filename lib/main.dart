import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: 300.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          Image(image: AssetImage('images/banner_1.jpeg')),
          Image(image: AssetImage('images/banner_2.jpeg')),
          Image(image: AssetImage('images/banner_3.jpeg')),
          Image(image: AssetImage('images/banner_4.jpeg')),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotColor: Colors.red,
      ),
    );

    return Scaffold(
      appBar: AppBar(
          // ...
          ),
      drawer: Drawer(
          // ...
          ),
      body: ListView(
        children: <Widget>[
          imageCarousel,
        ],
      ),
    );
  }
}
