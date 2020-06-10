import 'package:blog/src/screens/content.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  static final String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                "Erakomp's blog",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                'Trending',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.amber,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    height: 260,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.85,
//                      autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                  ),
                  items: List.generate(
                    5,
                    (index) => Builder(
                      builder: (context) => GestureDetector(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/28.jpg',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Text('Category'),
                            ),
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'lorem ipsum dolor sit amer lorem ipsum dolor sit amer lorem ipsum dolor sit amer lorem ipsum dolor sit amer lorem ipsum dolor sit amer lorem ipsum dolor sit amer ',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () =>
                            Navigator.pushNamed(context, ContentPage.id),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Text(
                "Today's read",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) => GestureDetector(
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    color: Colors.amber,
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'lorem ipsum Title lorem ipsum Title lorem ipsum Title lorem ipsum Title',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: false,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      DateFormat('MMM. dd, yyyy').format(
                                        DateTime.now(),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Icon(
                                      Icons.adjust,
                                      size: 10,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      DateFormat('hh:mm aa').format(
                                        DateTime.now(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              'assets/images/profile.jpeg',
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, ContentPage.id),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
