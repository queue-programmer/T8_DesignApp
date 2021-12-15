import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  final List<String> imageList = [
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://prod.cdn.bbaws.net/TDC_Blockbuster_-_Production/679/92/SO-15070_po-reg-medium_orig.jpg",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
    "https://prod.cdn.bbaws.net/TDC_Blockbuster_-_Production/679/92/SO-15070_po-reg-medium_orig.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Portfolio for poeple in a hurry") ,
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,
            ),
            items: imageList.map((e) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(e,
                    width: 1050,
                    height: 350,
                    fit: BoxFit.cover,)
                ],
              ) ,
            )).toList(),
          ),
        ),
      ),
    );
  }
}


// git init
// git add README.md
// git commit -m "first commit"
// git branch -M main
// git remote add origin https://github.com/queue-programmer/T8_DesignApp.git
// git push -u origin main