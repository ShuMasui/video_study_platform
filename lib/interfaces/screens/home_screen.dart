import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_study_platform/adaptors/home_screen/video_list_notifier.dart';
import 'package:video_study_platform/interfaces/router/app_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final videoList = ref
        .watch(videoListProvider)
        .when(
          data: (d) => ListView.builder(
            itemCount: d.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(),
                child: ListTile(
                  leading: Icon(Icons.video_collection),
                  title: Text(d[index].title),
                  subtitle: Text('再生時間: ${d[index].duration.inSeconds}秒'),
                  onTap: () {
                    // 動画再生画面への遷移
                    VideoScreenRouteData(
                      videoTitle: d[index].title,
                    ).go(context);
                  },
                ),
              );
            },
          ),
          error: (s, t) {
            debugPrint('$s\n$t');
            return Text('エラーが発生しました、再読み込みしてください');
          },
          loading: () => CircularProgressIndicator(),
        );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.secondary,
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Expanded(child: videoList)],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'fab_add',
            onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('動画を追加する機能は現在開発中です'),
                content: const Text('この機能は現在開発中です。今後対応予定です。'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('閉じる'),
                  ),
                ],
              ),
            ),
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            heroTag: 'fab_refresh',
            onPressed: () {
              ref.refresh(videoListProvider);
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('画面をリフレッシュしました'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('閉じる'),
                    ),
                  ],
                ),
              );
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
