import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              video.thumbnailUrl,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 8,
                right: 8, child:
            Container(
              padding:  const EdgeInsets.all(10),
              color: Colors.black,
              child: Text(video.duration,
                style: Theme.of(context).textTheme.caption!
                    .copyWith(color: Colors.white),),
            )),
          ],
        ),
        
        Row(
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(video.author.profileImageUrl),
            )
          ],
        )

      ],
    );
  }
}
