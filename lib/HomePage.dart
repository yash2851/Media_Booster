import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_media_player/video_detail.dart';
import 'package:new_media_player/video_model.dart';
import 'CarasoualSlider.dart';
import 'audio_detail.dart';
import 'audio_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.redAccent,
            indicatorWeight: 2,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.redAccent,
            tabs: [
              Tab(
                text: "Music",
              ),
              Tab(
                text: "Video",
              ),
            ],
          ),
          backgroundColor: Colors.grey[900],
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, Yash",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Ahemadabad",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 8, left: 15),
              child: Icon(
                Icons.notifications_active_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 70, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "Trending",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 20),
                          child: Text(
                            " 720 playlists",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 350,
                              width: 350,
                              child: carasoualSlideraudio(),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 20),
                          child: Text(
                            "Most Popular",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 150,
                          child: ListView.separated(
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              MusicPlayView(audioValue: index),
                                        ));
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        // shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 0.4,
                                              spreadRadius: 0.3)
                                        ],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                audioList[index].poster),
                                            fit: BoxFit.cover,
                                            opacity: 0.5)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          audioList[index].songName,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: audioList.length),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 20),
                          child: Text(
                            "Latest Song",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 170,
                          child: ListView.separated(
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 150,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 0.4, spreadRadius: 0.3)
                                      ],
                                      image: DecorationImage(
                                          image: AssetImage(
                                              audioList[index].poster),
                                          fit: BoxFit.cover,
                                          opacity: 0.8)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        audioList[index].songName,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: audioList.length),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 70, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          child: Text(
                            "Trending Video",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 20),
                          child: Text(
                            " 37 videos",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                        ),
                        Container(
                          child: CarouselSlider(
                              items: List.generate(videoList.length, (index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                VideoDetailScreen(
                                                    videoDetails: index)));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 0.4,
                                                spreadRadius: 0.3)
                                          ],
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  videoList[index].thumbnail),
                                              fit: BoxFit.cover,
                                              opacity: 0.6)),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              videoList[index].title,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                              options: CarouselOptions()),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 20),
                          child: Text(
                            "Most Popular",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 150,
                          child: ListView.separated(
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              VideoDetailScreen(
                                                  videoDetails: index),
                                        ));
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 0.4,
                                              spreadRadius: 0.3)
                                        ],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                videoList[index].thumbnail),
                                            fit: BoxFit.cover,
                                            opacity: 0.4)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          videoList[index].title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: videoList.length),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 10, bottom: 20),
                          child: Text(
                            "Latest Video",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 150,
                          child: ListView.separated(
                              reverse: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              VideoDetailScreen(
                                                  videoDetails: index),
                                        ));
                                  },
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 0.4,
                                              spreadRadius: 0.3)
                                        ],
                                        image: DecorationImage(
                                            image: AssetImage(
                                                videoList[index].thumbnail),
                                            fit: BoxFit.cover,
                                            opacity: 0.8)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          videoList[index].title,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: audioList.length),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MusicPlayView extends StatefulWidget {
  final audioValue;
  const MusicPlayView({super.key, this.audioValue});

  @override
  State<MusicPlayView> createState() => _MusicPlayViewState();
}

class _MusicPlayViewState extends State<MusicPlayView> {
  @override
  Widget build(BuildContext context) {
    return AudioDetailsScreen(indexvalue: widget.audioValue);
  }
}
