import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Cards1 extends StatelessWidget {
  const Cards1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
              color: Color.fromARGB(255, 10, 10, 10),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Text(
                    "Data Whinners",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 2.2,  // Adjusted for wider cards
                  children: [
                    _Card(
                      description: "Coding is life, and in life; you will die ...",
                      imageUrl: "https://imgs.search.brave.com/iETvXTTeChlNeeUUHuUICzN3esBjUBohotOr2xVmGVY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cHJlbWl1bWJlYXQu/Y29tL2Jsb2cvd3At/Y29udGVudC91cGxv/YWRzLzIwMTkvMTIv/dGh1bWJuYWlsLWNv/dmVyLmpwZz93PTg3/NSZoPTQ5MCZjcm9w/PTE",
                      mainTitle: "How to Learn Coding in 2025",
                      subTitle: "FreeCodeCampORG",
                      link: "https://www.w3schools.com/tags/mov_bbb.mp4",
                    ),
                    _Card(
                      description: "Coding is life, and in life; you will die ...",
                      imageUrl: "https://imgs.search.brave.com/fmck9tRe8z-vCaPxNQNJrruVgQHi8dlSuFV3Wjbl7qM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9saWNr/ZC5jby93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMi8xMS9DYW52/YS1Zb3VUdWJlLVRo/dW1ibmFpbC1jcmVh/dG9yLmpwZWc",
                      mainTitle: "How to Learn Coding in 2025",
                      subTitle: "FreeCodeCampORG",
                      link: "https://www.w3schools.com/tags/mov_bbb.mp4",
                    ),
                    _Card(
                      description: "Coding is life, and in life; you will die ...",
                      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkYrUxfJntqXN9ZSp1Nj6Trfh7scBOvkHH2w&s",
                      mainTitle: "How to Learn Coding in 2025",
                      subTitle: "FreeCodeCampORG",
                      link: "https://www.w3schools.com/tags/mov_bbb.mp4",
                    ),
                    _Card(
                      description: "Coding is life, and in life; you will die ...",
                      imageUrl: "https://imgs.search.brave.com/B4OMBqpifyDVeVKMEF094wUTbi8KtbMezEixEPD5MrY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9iNGsxNmM3/bHc1dXQvNFlWMEVW/T1F5R2JQQ0pzcmxh/c1ZaSS80NjA1Mjhl/Y2Q2YjhjNzdkYzhk/YzVjMmE4NzI5NWNm/My9CbG9nX18zMl8u/anBnP2ZtPXdlYnAm/dz0xMDgwJnE9NTA",
                      mainTitle: "How to Learn Coding in 2025",
                      subTitle: "FreeCodeCampORG",
                      link: "https://www.w3schools.com/tags/mov_bbb.mp4",
                    ),
                    _Card(
                      description: "Coding is life, and in life; you will die ...",
                      imageUrl: "https://imgs.search.brave.com/umyCNuiHS5gJ95jWM8J6tRmHXDGGLHqq2w4YOoXT_Qs/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS9C/c0RvTFZNbm1acy9t/YXhyZXNkZWZhdWx0/LmpwZw",
                      mainTitle: "How to Learn Coding in 2025",
                      subTitle: "FreeCodeCampORG",
                      link: "https://www.w3schools.com/tags/mov_bbb.mp4",
                    ),
                    _Card(
                      description: "Coding is life, and in life; you will die ...",
                      imageUrl: "https://imgs.search.brave.com/34rTFAR2uBjuqzUmrv7GsLaZFpwQGvNOSnDaArnTWoI/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9pLnl0/aW1nLmNvbS92aS83/d25vdmU3Sy1aUS9t/YXhyZXNkZWZhdWx0/LmpwZw",
                      mainTitle: "How to Learn Coding in 2025",
                      subTitle: "FreeCodeCampORG",
                      link: "https://www.w3schools.com/tags/mov_bbb.mp4",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final String imageUrl;
  final String mainTitle;
  final String subTitle;
  final String description;
  final String link;

  const _Card({
    Key? key,
    required this.imageUrl,
    required this.mainTitle,
    required this.subTitle,
    required this.description,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.grey[600],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                child: Image.network(
                  imageUrl,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainTitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Divider(color: Colors.black),
                    Text(
                      description,
                      style: TextStyle(fontSize: 12, color: Colors.black87),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black45,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoPlayerPage(
                                description: mainTitle,
                                link: link,
                              ),
                            ),
                          );
                        },
                        child: const Text("Watch Video", style: TextStyle(fontSize: 12)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoPlayerPage extends StatefulWidget {
  final String description;
  final String link;

  const VideoPlayerPage({
    Key? key,
    required this.description,
    required this.link,
  }) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.link))
      ..initialize().then((_) {
        setState(() {});
      }).catchError((error) {
        print("Error loading video: $error");
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.description,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4, // 40% of screen height
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Center(child: CircularProgressIndicator()),
              ),
              SizedBox(height: 16),
              IconButton(
                icon: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 32,
                ),
                onPressed: () {
                  setState(() {
                    _isPlaying = !_isPlaying;
                    _isPlaying ? _controller.play() : _controller.pause();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}