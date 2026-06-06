part of '../app_router.dart';

@TypedGoRoute<VideoScreenRouteData>(path: '/video/:videoTitle', name: 'video')
class VideoScreenRouteData extends GoRouteData with $VideoScreenRouteData {
  late String videoTitle;

  VideoScreenRouteData({required this.videoTitle});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return VideoScreen(videoTitle: videoTitle);
  }
}
