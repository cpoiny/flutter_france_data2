import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoHero extends StatefulWidget {
  const VideoHero({super.key});


 @override
  _VideoHeroState createState() => _VideoHeroState();
}


class _VideoHeroState extends State<VideoHero> {

  

 late VideoPlayerController _controller;
   @override
  void initState() {
    super.initState();
    // Pointing the video controller to our local asset.

    _controller = VideoPlayerController.asset("video/v1.mp4")
      ..initialize().then((_) {
        // Once the video has been loaded we play the video and set looping to true.
        _controller.play();
        _controller.setLooping(true);
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      });
  }



  @override
  Widget build(BuildContext context) {
      return Container(
       decoration: const BoxDecoration(
         color: Colors.red,
       ),
       // -------------------------- votre code ci dessous----------------
       child:  Column(
         mainAxisAlignment: MainAxisAlignment.
           spaceEvenly,
           children: <Widget>[
      
            VideoPlayer(_controller),
                  
            const Column(
              children: <Widget>[
                Text(
           "France Data",
           style:  TextStyle(
             color: Colors.white,
             fontFamily: 'Courier new',
             fontSize: 35,
           ),
         ),
                Text(
           "Atlas des données de France",
           style:  TextStyle(
             color: Colors.white,
             fontFamily: 'Courier new',
             fontSize: 15,
           ),
         ),
        ]  
      ),
    ]
  ),
);
}

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}



