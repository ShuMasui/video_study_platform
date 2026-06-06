// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_player/video_player.dart';

// Project imports:
import 'package:video_study_platform/adaptors/video_screen/video_notifier.dart';

class SubTitleDisplay extends ConsumerStatefulWidget {
  final String videoTitle;
  final VideoPlayerController controller;

  const SubTitleDisplay({
    super.key,
    required this.controller,
    required this.videoTitle,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SubTitleDisplayState();
}

class _SubTitleDisplayState extends ConsumerState<SubTitleDisplay> {
  final ScrollController _scrollController = ScrollController();
  int _lastSubtitleCount = 0;

  @override
  void initState() {
    super.initState();

    widget.controller.addListener(_onControllerUpdate);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerUpdate);
    _scrollController.dispose();
    super.dispose();
  }

  void _onControllerUpdate() {
    ref.invalidate(subTitleProvider(widget.videoTitle));
    if (mounted) {
      setState(() {});
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  String _formatDuration(Duration d) {
    final minutes = d.inMinutes.toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final metaDataState = ref.watch(videoMetaDataProvider(widget.videoTitle));

    // チャットバブルが存在していいエリア（白枠線付きコンテナ）を定義するヘルパー
    Widget wrapWithBorder(Widget child) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.2), // 半透明の暗い背景
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.15), // 白枠線でエリアを明確にする
            width: 1.2,
          ),
        ),
        clipBehavior: Clip.antiAlias, // 中身が角丸の白枠線からはみ出ないようにクリップする
        child: child,
      );
    }

    return metaDataState.when(
      data: (metaData) {
        if (metaData == null || metaData.subtitles.isEmpty) {
          return wrapWithBorder(
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '字幕データがありません',
                  style: TextStyle(color: Colors.white38),
                ),
              ),
            ),
          );
        }

        final currentPosition = widget.controller.value.position;
        final allSubtitles = metaData.subtitles;

        // 現在時間以前に開始された字幕を抽出
        final currentSubtitles = allSubtitles
            .where((sub) => sub.start <= currentPosition)
            .toList();

        // 字幕が追加されたら自動スクロール
        if (currentSubtitles.length != _lastSubtitleCount) {
          _lastSubtitleCount = currentSubtitles.length;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _scrollToBottom();
          });
        }

        if (currentSubtitles.isEmpty) {
          return wrapWithBorder(
            const Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('字幕再生前', style: TextStyle(color: Colors.white38)),
              ),
            ),
          );
        }

        return wrapWithBorder(
          ListView.builder(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            itemCount: currentSubtitles.length,
            itemBuilder: (context, index) {
              final subtitle = currentSubtitles[index];
              final isLatest = index == currentSubtitles.length - 1;

              return Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              bottomLeft: Radius.circular(4),
                            ),
                            onTap: () {
                              widget.controller.seekTo(subtitle.start);
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 250),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: isLatest
                                    ? Theme.of(context)
                                          .colorScheme
                                          .primaryContainer
                                          .withValues(alpha: 0.85)
                                    : Colors.white.withValues(alpha: 0.08),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(4),
                                ),
                                border: Border.all(
                                  color: isLatest
                                      ? Theme.of(context).colorScheme.primary
                                            .withValues(alpha: 0.3)
                                      : Colors.white.withValues(alpha: 0.05),
                                  width: 1,
                                ),
                                boxShadow: [
                                  if (isLatest)
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withValues(alpha: 0.15),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                ],
                              ),
                              child: Text(
                                subtitle.text,
                                style: TextStyle(
                                  color: isLatest
                                      ? Theme.of(
                                          context,
                                        ).colorScheme.onPrimaryContainer
                                      : Colors.white.withValues(alpha: 0.8),
                                  fontSize: 15,
                                  fontWeight: isLatest
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                  height: 1.3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Text(
                          _formatDuration(subtitle.start),
                          style: TextStyle(
                            color: isLatest
                                ? Theme.of(
                                    context,
                                  ).colorScheme.secondary.withValues(alpha: 0.8)
                                : Colors.white38,
                            fontSize: 10,
                            fontWeight: isLatest
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => wrapWithBorder(
        const Center(child: CircularProgressIndicator()),
      ),
      error: (e, st) => wrapWithBorder(
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '字幕の取得に失敗しました',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
        ),
      ),
    );
  }
}
