import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';

class CustomSliverNavbar extends StatelessWidget {
  const CustomSliverNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 100,
      leading: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Image.asset('lib/assets/images/yt.gif')),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              foregroundImage: AssetImage(currentUser.profileImageUrl),
            )),
      ],
    );
  }
}
