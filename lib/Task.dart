// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

final String assetName = 'assets/images/1681584675football-svgrepo-com.svg';
final Widget svg = SvgPicture.asset(
    assetName,
    semanticsLabel: 'Acme Logo'
);

final String N1 = 'assets/images/240_F_35.jpg';
final String N2 = 'assets/images/240_F_18.jpg';
final String N3 = 'assets/images/240_F_46.jpg';
final Widget crs = CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [N1,N2,N3].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child: Image.asset(i),
          );
        },
      );
   }).toList(),
);


void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget> [
            crs,
          SizedBox(
            height: 250,
            width: 150,
            child:
              //SvgPicture.asset('assets/images/1681584675football-svgrepo-com.svg'),
              SvgPicture.network ('http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg'),
          )
          ],
        ),
      ),
    );
  }
  
}
