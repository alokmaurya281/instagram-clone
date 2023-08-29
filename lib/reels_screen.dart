import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:video_player/video_player.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _liked = false;
  String videoUrl =
      'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4';
  @override
  void initState() {
    super.initState();
    initializePlayer(videoUrl);
  }

  Future initializePlayer(videoUrl) async {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        return SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              SizedBox(
                width: double.infinity,
                height: 900,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: _chewieController != null &&
                          _chewieController!
                              .videoPlayerController.value.isInitialized
                      ? GestureDetector(
                          onDoubleTap: () {
                            setState(() {
                              _liked = !_liked;
                            });
                          },
                          child: Chewie(
                            controller: _chewieController!,
                          ),
                        )
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 110,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Reels",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
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
                                          color: const Color.fromARGB(
                                              99, 29, 27, 27),
                                        ),
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      child: const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/profile.jpg'),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Text(
                                    "Username",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        decoration: TextDecoration.none),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  const Icon(
                                    Icons.verified,
                                    size: 15,
                                    color: Colors.blueAccent,
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.white),
                                        backgroundColor: Colors.transparent,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Follow",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  'Flutter is beautiful and fast ..',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 8),
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        color:
                                            Color.fromARGB(108, 100, 100, 100)),
                                    child: const Text(
                                      'Original Audio - some music track--',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          decoration: TextDecoration.none),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  '601k',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 20),
                                const FaIcon(
                                  FontAwesomeIcons.comment,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  '1123',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 20),
                                Transform(
                                  transform: Matrix4.rotationZ(5.8),
                                  child: const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  '13',
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 50),
                                const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 22,
                                ),
                                SizedBox(
                                  height: 50,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
