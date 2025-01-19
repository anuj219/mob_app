import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// void main() {
//   runApp(MaterialApp(
//     home: VideoGridPage(),
//   ));
// }

class VideoGridPage extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      "title": "Big Buck Bunny",
      "url": "https://www.w3schools.com/tags/mov_bbb.mp4",
      "thumbnailUrl": "https://peach.blender.org/wp-content/uploads/title_anouncement.jpg?x11217"
    },
    {
      "title": "Sintel",
      "url": "https://www.w3schools.com/tags/mov_bbb.mp4",
      "thumbnailUrl": "https://durian.blender.org/wp-content/uploads/2010/08/sintel_trailer-200x300.jpg"
    },
    {
      "title": "Tears of Steel",
      "url": "https://www.w3schools.com/tags/mov_bbb.mp4",
      "thumbnailUrl": "https://mango.blender.org/wp-content/uploads/2013/08/tears_of_steel.jpg"
    },
    {
      "title": "Video 4",
      "url": "https://www.w3schools.com/tags/mov_bbb.mp4",
      "thumbnailUrl": "https://applemagazine.com/wp-content/uploads/2022/07/Subway-surfers-characters.jpg"
    },
    {
      "title": "Video 5",
      "url": "https://www.w3schools.com/tags/mov_bbb.mp4",
      "thumbnailUrl": "https://applemagazine.com/wp-content/uploads/2022/07/Subway-surfers-characters.jpg"
    },
    {
      "title": "Video 6",
      "url": "https://www.w3schools.com/tags/mov_bbb.mp4",
      "thumbnailUrl": "https://applemagazine.com/wp-content/uploads/2022/07/Subway-surfers-characters.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Grid"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 16 / 9,
          children: videos.map((video) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerPage(
                      title: video["title"]!,
                      videoUrl: video["url"]!,
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.network(
                        video["thumbnailUrl"]!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: Colors.grey[300],
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.black54,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        video["title"]!,
                        style: TextStyle(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class VideoPlayerPage extends StatefulWidget {
  final String title;
  final String videoUrl;

  VideoPlayerPage({required this.title, required this.videoUrl});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
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
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
