//
//
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
//
// class mydynamic extends StatefulWidget {
//   const mydynamic({Key? key}) : super(key: key);
//
//   @override
//   State<mydynamic> createState() => _mydynamicState();
// }
//
//
//
//
// class _mydynamicState extends State<mydynamic> {
//   List<String> urls = [
//     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"
//   ];
//
//   List<VideoPlayerController> _controllers = [];
//
//   @override
//   void initState() {
//     super.initState();
//     urls.forEach((element) {
//       _controllers.add(VideoPlayerController.network(element));
//     });
//   }
//
//   void _playVideos() {
//     _controllers.forEach((controller) {
//       controller
//         ..initialize().then((_) {
//           setState(() {});
//         });
//       controller.value.isPlaying ? controller.pause() : controller.play();
//     });
//   }
//
//   bool isVideosPlaying() {
//     for (VideoPlayerController controller in _controllers) {
//       if (controller.value.isPlaying) {
//         return true;
//       }
//     }
//     return false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(title: Text("Adas")),
//       body: ListView.builder(
//         shrinkWrap: true,
//         itemBuilder: (ctx, index) {
//           VideoPlayerController controller = _controllers[index];
//           print(controller.value.isPlaying);
//           return Container(
//             child: controller.value.isInitialized
//                 ? AspectRatio(
//               aspectRatio: controller.value.aspectRatio,
//               child: VideoPlayer(controller),
//             )
//                 : Container(),
//           );
//         },
//         itemCount: urls.length,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _playVideos();
//           });
//         },
//         child: Icon(
//           isVideosPlaying() ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controllers.forEach((controller) {
//       controller.dispose();
//     });
//   }
// }
//
