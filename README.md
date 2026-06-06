# video_study_platform (動画学習プラットフォーム)

動画を視聴しながら、同期する字幕を用いてインタラクティブかつ効率的に学習を進めるためのFlutter製「動画学習プラットフォーム」アプリです。

---

## 📱 アプリの概要

このアプリは、講義や学習用の動画を視聴しながら、リアルタイムに発話テキスト（字幕）を追い、過去の講義内容へ瞬時にアクセスできるモダンな学習体験を提供します。

### 🌟 特徴的な機能

1. **チャット字幕タイムライン (同期字幕機能)**
   - 動画の再生位置（時間）に同期して、字幕がチャットアプリのメッセージ履歴（バブル）のようにリアルタイムに発出されます。
   - 新しい字幕が発出されると、リストは自動的にスムーズスクロールで追従します。

2. **タップ・シーク (インスタントジャンプ)**
   - 過去に流れた字幕バブルをタップすることで、動画の再生位置をその字幕の発話開始時間（`SubtitleData.start`）へ**即座にシーク**させることができます。
   - 「さっき言っていた説明をもう一度聞き直したい」という時に、シークバーを手動で探る必要がありません。

3. **モダンでプレミアムなUIデザイン**
   - ぼかしの大きいソフトな影（`BoxShadow`）や大きめの角丸（`BorderRadius`）を活用し、奥行きと洗練された質感を持つ現代的なデザインです。
   - 動画再生画面は深みのあるダークスペースカラーを基調とし、磨りガラス風（ガラスモルフィズム）のコントロールパネルを配置したシネマプレイヤー風の高級感を演出しています。

4. **レスポンシブレイアウト**
   - 画面の縦横比（アスペクト比）を自動検知し、表示環境に合わせてレイアウトを動的に組み替えます。
   - **横長画面 (PC等)**: 左側に「動画プレイヤー」、右側に「字幕」と「コントロール」を並べた2カラム配置。
   - **縦長画面 (スマホ等)**: 上から順に「動画プレイヤー (上)」➔「コントロールボタン (真ん中)」➔「チャット字幕 (下)」と並べ、片手でも操作しやすい縦型3層配置。

---

## 🛠 技術スタック

- **Framework**: [Flutter](https://flutter.dev/) (Web / Mobile / Desktop クロスプラットフォーム対応)
- **State Management**: [Flutter Riverpod](https://riverpod.dev/) + Riverpod Generator (型安全な状態管理とコード自動生成)
- **Routing**: [GoRouter](https://pub.dev/packages/go_router) (型安全な `GoRouterBuilder` による宣言的ルーティング)
- **Video Playback**: [video_player](https://pub.dev/packages/video_player) (カスタムシークバー、時間表示、コントロール制御)
- **Storage**: [Firebase Storage](https://firebase.google.com/docs/storage) (講義動画ファイルおよびメタデータのホスティング)

---

## 📂 構成とコンポーネント設計

ビジネスロジック（Riverpod の状態の watch や Firebase 通信、ルーティング設定）を極力画面（`screens/`）側に集約し、見た目の装飾や配置を担当するUI部分を `widgets/` に切り出した、可読性と保守性の高いコンポーネント設計を採用しています。

### 主要ファイル構成

- **`lib/interfaces/screens/`** (画面全体と主要ロジックの定義)
  - [`home_screen.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/screens/home_screen.dart): 動画リストの watch と FAB によるダイアログ/SnackBar等のアクションを管理。
  - [`video_screen.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/screens/video_screen.dart): 動画コントローラーの読み込み状態管理、エラー監視、および縦横比に応じたレイアウト切り替えを担当。
- **`lib/interfaces/widgets/`** (切り出された専用UIコンポーネント)
  - [`video_library_card.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/widgets/video_library_card.dart): ホームの動画ライブラリカード本体（リスト、データ、エラー、読み込み表示）。
  - [`video_player_view.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/widgets/video_player_view.dart): 再生画面左側のプレイヤー本体とカスタムシークバー。
  - [`video_control_panel.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/widgets/video_control_panel.dart): 再生画面右側のコントロールパネル（縦長/横長で要素の並び順を自動最適化）。
  - [`subtitle_display.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/widgets/subtitle_display.dart): チャットタイムライン表示、自動スクロール、およびタップシーク処理のコアUI。
  - [`custom_seek_bar.dart`](file:///Users/shumasui/Documents/developer/video_study_platform/lib/interfaces/widgets/custom_seek_bar.dart): シアンカラーのモダンなスライダーと再生時間/総時間のインジケータ。
