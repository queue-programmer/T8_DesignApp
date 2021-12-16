import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  final List<String> imageList = [
    "https://www.setaswall.com/wp-content/uploads/2018/08/Spiderman-Wallpaper-76-1280x720.jpg",
    "https://prod.cdn.bbaws.net/TDC_Blockbuster_-_Production/679/92/SO-15070_po-reg-medium_orig.jpg",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
    "https://i-viaplay-com.akamaized.net/viaplay-prod/947/96/1552384624-73a8ecb1960e6bb11ed4a6e7baea10e8917eed37.jpg?width=1600&height=900",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
    "https://www.cnet.com/a/img/y2022_8LD2cMg5U5r0kpVftcBpU=/2018/10/02/db9540de-7891-4503-b261-1fea3e53af2d/spider-man-spider-verse-animated-film-1.jpg"
  ];

  final List<String> verticalList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNSam-y8qBXz5g7WcoswNmcu6-_DmIbI7R2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7PI8lS4jCTD3iSRm0u23ifbZZzNXk5Una4w&usqp=CAU",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
    "https://i-viaplay-com.akamaized.net/viaplay-prod/947/96/1552384624-73a8ecb1960e6bb11ed4a6e7baea10e8917eed37.jpg?width=1600&height=900",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxokrm_t5muUw85gMZ5FzMwNFPFnCp-R5igg&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.yellowAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Just a simple picture app"),
        ),
        body: Center(
          child: Column(
            children: [
              SafeArea(
                minimum: const EdgeInsets.all(16.0),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ListView(
                   children: verticalList.map((e) =>
                       Image.network(e,
                         width: 300,
                         height: 200,
                         fit: BoxFit.cover,)
                   ).toList(),
                  ),
                ),
              ),
            ],
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