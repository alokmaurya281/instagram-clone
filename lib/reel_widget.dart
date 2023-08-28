import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:readmore/readmore.dart';
import 'package:video_player/video_player.dart';

class ReelWidget extends StatefulWidget {
  const ReelWidget({super.key});

  @override
  State<ReelWidget> createState() => _ReelWidgetState();
}

class _ReelWidgetState extends State<ReelWidget> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/video.mp4')
          ..initialize().then(
            (_) {
              setState(() {});
              _videoPlayerController.play();
              _videoPlayerController.setLooping(true);
              _videoPlayerController.setVolume(0.0);
            },
          );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(),
                child: FittedBox(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 650,
                    width: 400,
                    child: _videoPlayerController.value.isInitialized
                        ? VideoPlayer(_videoPlayerController)
                        : const Center(
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: CircularProgressIndicator.adaptive(),
                            ),
                          ),
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    horizontalTitleGap: 8,
                    minVerticalPadding: 0,
                    leading: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                          width: 2,
                          gradient: LinearGradient(
                            colors: [Colors.pink, Colors.orange],
                          ),
                        ),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(99, 29, 27, 27),
                          ),
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                        ),
                      ),
                    ),
                    title: const Text(
                      'username',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      'song if any',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: const FaIcon(
                          FontAwesomeIcons.ellipsisVertical,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 550,
                  ),
                  ListTile(
                    trailing: GestureDetector(
                      child: const Icon(
                        Icons.volume_off_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                contentPadding:
                    const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
                leading: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 0, left: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.heart),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 0, left: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.comment),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 0, left: 8, right: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: const FaIcon(FontAwesomeIcons.paperPlane),
                      ),
                    ),
                  ],
                ),
                title: const Icon(FontAwesomeIcons.ellipsis),
                trailing: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 0, left: 8, right: 8),
                  child: GestureDetector(
                    onTap: () {},
                    child: const FaIcon(FontAwesomeIcons.bookmark),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('12 likes'),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: ReadMoreText(
                            "hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post hello this my new post  !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
                            trimCollapsedText: '...Show more',
                            trimExpandedText: ' show less',
                            trimLength: 70,
                            colorClickableText: Colors.grey,
                            moreStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                            trimMode: TrimMode.Length,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'View all 36 comments',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            '26 minutes ago .',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, left: 4),
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'See translation',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
