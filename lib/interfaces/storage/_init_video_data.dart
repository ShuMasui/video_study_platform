import 'package:video_study_platform/domains/entities/subtitle_data.dart';
import 'package:video_study_platform/domains/entities/video_meta_data.dart';

final VideoMetaData videoMetaData1 = VideoMetaData(
  title: 'This is the sample video.',
  videoUrl: 'video/bee.mp4',
  duration: Duration(seconds: 4),
  subtitles: [
    SubtitleData(start: Duration(seconds: 0), text: 'This is the sample video'),
    SubtitleData(
      start: Duration(seconds: 1),
      text: 'このように字幕をリアルタイムに変更することができます',
    ),
    SubtitleData(start: Duration(seconds: 2), text: '蜂さんが飛んでいますね'),
    SubtitleData(start: Duration(seconds: 3), text: 'かわいらしいですね'),
  ],
);

final VideoMetaData videoMetaData2 = VideoMetaData(
  title: '奈良高専 集積回路第6回課題 増井崇',
  videoUrl: 'video/teikaizoudo_yamakenkadai.mp4',
  duration: Duration(minutes: 17, seconds: 35),
  subtitles: [
    SubtitleData(
      start: Duration(seconds: 0, milliseconds: 0),
      text: '5年 情報工学科37番 増井 崇がフォトリソグラフィーについての紹介をさせていただきたいと思います。',
    ),
    SubtitleData(
      start: Duration(seconds: 8, milliseconds: 350),
      text:
          'それではまず、フォトリソグラフィーとはについてなのですが、端的に言うとシリコンウェハー上に回路パターンを記述する手法のことを指します。',
    ),
    SubtitleData(
      start: Duration(seconds: 20, milliseconds: 700),
      text: '実際に、行われる工程はこの下に書いてある通り なんですけれど、',
    ),
    SubtitleData(
      start: Duration(seconds: 26, milliseconds: 500),
      text: 'まず最初にレジスト塗布、プリベークを行って、',
    ),
    SubtitleData(
      start: Duration(seconds: 31, milliseconds: 500),
      text: '次に露光、露光後加熱を行い、',
    ),
    SubtitleData(
      start: Duration(seconds: 35, milliseconds: 250),
      text: '次に現像、ポストベーク、',
    ),
    SubtitleData(
      start: Duration(seconds: 38, milliseconds: 500),
      text: 'エッチングを終えてアッシング、これによって回路パターンを記述することができます。',
    ),
    SubtitleData(
      start: Duration(seconds: 47, milliseconds: 0),
      text: 'それではまず初めに、レジスト塗布プラスプリベークという過程に関して説明させていただこうと思います。',
    ),
    SubtitleData(
      start: Duration(seconds: 57, milliseconds: 150),
      text: 'え、レジスト塗布についてってことなんですけれど、レジスト塗布において最も大切なことはレジストの厚さが均一になることでございます。',
    ),
    SubtitleData(
      start: Duration(seconds: 69, milliseconds: 300),
      text: 'そのために、 ウェハーの中央部にレジストを滴下し回転させることで均一に拡散させるという手法をとります。',
    ),
    SubtitleData(
      start: Duration(seconds: 79, milliseconds: 700),
      text: 'この手法のことをスピンコートという風に呼びます。',
    ),
    SubtitleData(
      start: Duration(seconds: 84, milliseconds: 500),
      text:
          'ですが、ウェハーを回転、その上に液体を滴下するということは、遠心力によって、拡散させていくということになるんですけれど、これのせいで端っこの方、いわゆるウェハーの端っこの方にはエッジビードというものが発生してしまいます。',
    ),
    SubtitleData(
      start: Duration(seconds: 103, milliseconds: 850),
      text: 'また、裏面には液体がこぼれ落ちていくことによって、回り込みというものが発生してしまいます。',
    ),
    SubtitleData(
      start: Duration(seconds: 111, milliseconds: 850),
      text:
          'そのため、実際の作業工程ではこれらをエッジリンス、バックリンスというものを用いて、実際に薬液を用いて レジストを溶かすことによって除去していきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 127, milliseconds: 150),
      text: 'そして、全ての工程が終わった後にプリベークを行うことによって、液体だったレジストを固める、硬化させるということになります。',
    ),
    SubtitleData(
      start: Duration(seconds: 137, milliseconds: 650),
      text: '実際のレジスト塗布における模式図がこちらの図になります。',
    ),
    SubtitleData(
      start: Duration(seconds: 143, milliseconds: 150),
      text:
          '実際に、ぷ、 申し訳ございません。ピンク色のウェハーの上にレジスト、緑のレジストを え、点火、滴下してい、滴下していき回転することによってレジストを横に押し広げていきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 158, milliseconds: 850),
      text: '実際に均一化、このような状態、右の図のような状態になれば、 最終的にはレジストを塗布できたということになります。',
    ),
    SubtitleData(
      start: Duration(seconds: 169, milliseconds: 250),
      text: 'そして、この際に生まれるエッジビード、回り込み、先ほどのページでご紹介させていただいたものは具体的にこういったものになっています。',
    ),
    SubtitleData(
      start: Duration(seconds: 179, milliseconds: 150),
      text: 'いわゆる、 シリコンウェハーの上にレジストが残ってしまうという状態になっています。',
    ),
    SubtitleData(
      start: Duration(seconds: 188, milliseconds: 200),
      text: '薬液を用いて溶かすことで対応いたします。',
    ),
    SubtitleData(
      start: Duration(seconds: 192, milliseconds: 500),
      text: 'では、次に 露光、露光後加熱という工程についてご紹介させていただこうと思います。',
    ),
    SubtitleData(
      start: Duration(seconds: 200, milliseconds: 650),
      text: '露光について、まず露光を考える上で必要になってくるのはフォトマスクという部品です。',
    ),
    SubtitleData(
      start: Duration(seconds: 208, milliseconds: 0),
      text: '回路を形成するときには、レジストに光を当てて溶ける部分を決定します。',
    ),
    SubtitleData(
      start: Duration(seconds: 215, milliseconds: 0),
      text: 'この時に、 え、実際にその溶かす部分が変わることによって回路パターンを形成することができます。',
    ),
    SubtitleData(
      start: Duration(seconds: 222, milliseconds: 850),
      text: 'この時に、光が当たる部分、シリコンウェハー上の光が当たる部分を制限するのがフォトマスクという部品です。',
    ),
    SubtitleData(
      start: Duration(seconds: 233, milliseconds: 550),
      text: 'このフォトマスクという部品なんですけれど、2種類ございます。',
    ),
    SubtitleData(
      start: Duration(seconds: 239, milliseconds: 150),
      text: '1つ目は、単純に溶かしたい部分、溶かしたくない部分という風な2値で分けてマスクするのがバイナリマスクというものです。',
    ),
    SubtitleData(
      start: Duration(seconds: 250, milliseconds: 150),
      text:
          'ですが、このバイナリマスクでは高解像度化に対応できない、近年の高精細な回路に対応できないという課題が起きてきましたので、登場したのが2種類目の溶ける部分をより高解像度で制限することができる、 位相シフトマスクというものです。',
    ),
    SubtitleData(
      start: Duration(seconds: 269, milliseconds: 450),
      text:
          'そして、このフォトマスクというもの大切になってくるんですけれど、実はこれも作る過程が非常にフォトリソグラフィーと似てることが知られています。',
    ),
    SubtitleData(
      start: Duration(seconds: 281, milliseconds: 300),
      text: 'では次に、フォトマスクの製造工程をお伝えします。',
    ),
    SubtitleData(
      start: Duration(seconds: 286, milliseconds: 0),
      text: 'まず初めに、製造側が回路パターンを決定します。',
    ),
    SubtitleData(
      start: Duration(seconds: 291, milliseconds: 0),
      text: '画像、そしてこの次にこの回路パターンをフォトマスクとして部品に落とし込んでいくという作業を行います。',
    ),
    SubtitleData(
      start: Duration(seconds: 298, milliseconds: 300),
      text:
          'そのために、まず フォトマスクの重要な部分、フォトマスクのいわゆる基盤となる石英ガラス、そしてその上にクロムを塗布するという作業を行います。',
    ),
    SubtitleData(
      start: Duration(seconds: 312, milliseconds: 500),
      text: 'そして、次に石英マスクの上にクロムが乗った状態の板の上に、さらにレジストというものを塗布していきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 322, milliseconds: 0),
      text: 'これは先ほどの工程と同じような手順で行います。',
    ),
    SubtitleData(
      start: Duration(seconds: 326, milliseconds: 850),
      text: 'そして、次にレジスト自体を電子線を用いて溶かすという作業を行います。',
    ),
    SubtitleData(
      start: Duration(seconds: 334, milliseconds: 350),
      text: 'いわゆる削るという作業ですね。',
    ),
    SubtitleData(
      start: Duration(seconds: 337, milliseconds: 400),
      text:
          'そして、その次に クロムの一部を溶かす、いわゆるその、レジストの 真下にあるクロムを残してそれ以外の部分を削るというエッチング加工という作業を行います。',
    ),
    SubtitleData(
      start: Duration(seconds: 351, milliseconds: 750),
      text: '最後に、上に残ったレジスト自体を除去することによって、フォトマスクというものが完成します。',
    ),
    SubtitleData(
      start: Duration(seconds: 361, milliseconds: 250),
      text: 'いわゆる石英ガラスの上に、回路パターンを書きたくない部分にクロムが乗っている状態のフォトマスクを完成させます。',
    ),
    SubtitleData(
      start: Duration(seconds: 372, milliseconds: 200),
      text:
          'また、工程的な話にはなってしまいますが、フォトマスクのガロ 周囲にはペリクル膜というものを巻くことによって、フォトマスクの品質というものを一定に維持するという作業を最後に行います。',
    ),
    SubtitleData(
      start: Duration(seconds: 387, milliseconds: 900),
      text:
          'この時に重要な語句として、石英ガラスの上にクロム、そしてレジストを塗布した状態のこの3層の板のことをマスクブランクスという風に呼びます。',
    ),
    SubtitleData(
      start: Duration(seconds: 401, milliseconds: 400),
      text:
          'いわゆる、フォトマスクは光を通す状態、一部光を通す状態になっているんですけれど、このレジストを塗布した段階では、1つも光を通さない状態になっていますから ブランク、ということでマスクブランクスという風な名前がついています。',
    ),
    SubtitleData(
      start: Duration(seconds: 419, milliseconds: 300),
      text: 'では次に、露光について単波長が良い理由ということをお話します。短波長が良い理由についてお話します。',
    ),
    SubtitleData(
      start: Duration(seconds: 430, milliseconds: 900),
      text: '回路の微細化に必要なのは、露光波長の短波長化、もしくは露光レンズの大口径化という作業です。',
    ),
    SubtitleData(
      start: Duration(seconds: 440, milliseconds: 700),
      text: 'ですが、レンズの大口径化には限界がございます。',
    ),
    SubtitleData(
      start: Duration(seconds: 445, milliseconds: 100),
      text:
          'これは、いわゆるレンズが大きくなればなるほど単焦点、いわゆる焦点距離が非常に短くなっていくということが起きてしまうので、 機器の製造上の制約によって近づけることができない距離というものが発生します。',
    ),
    SubtitleData(
      start: Duration(seconds: 461, milliseconds: 750),
      text: 'そのため、露光レンズの大口径化も重要ですが、それ以上に露光 における 短波長化というものが非常に鍵になってきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 472, milliseconds: 700),
      text:
          'では、なぜ短波長化、え、 微細化に役立つのかという話なんですけれど、まず 光というものを用いて回路のパターンを形成するんですけれど、フォトマスクなどの隙間を光が通り抜ける時、必ず光というものは回折してしまいます。',
    ),
    SubtitleData(
      start: Duration(seconds: 493, milliseconds: 150),
      text: 'これは、いわゆる散乱、レイリー散乱といったようなところでも語られるような一般的な事象です。',
    ),
    SubtitleData(
      start: Duration(seconds: 501, milliseconds: 50),
      text: 'では、回折の悪いところ、何なのかというと、それは光のエネルギー低下が起こってしまうということです。',
    ),
    SubtitleData(
      start: Duration(seconds: 509, milliseconds: 400),
      text:
          'いわゆる回折というものは光が、え、本来届いてほしいところ以外に届いてしまうということなので、届いてほしいところに行く光の量っていうものは減ってしまう、いわゆるエネルギーが低下という事象が起こってしまいます。',
    ),
    SubtitleData(
      start: Duration(seconds: 522, milliseconds: 850),
      text: 'すると、本来溶かしたかったはずのレジストであったり、そういったものが溶けない、光が届かないといったことが起きてしまいます。',
    ),
    SubtitleData(
      start: Duration(seconds: 532, milliseconds: 300),
      text: 'そのため、このようなエネルギー低下を起こさないためには、回折しないような光で露光する必要が出てきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 541, milliseconds: 900),
      text: 'それが、いわゆる直進性が強いと言われている短波長の光ということになってきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 550, milliseconds: 200),
      text: 'そのため、高精細化、回路の進化のためには短波長を用いた露光が良いということになってくるわけです。',
    ),
    SubtitleData(
      start: Duration(seconds: 559, milliseconds: 750),
      text: 'では、次に露光装置について、露光方式ごとの違いについてお話します。',
    ),
    SubtitleData(
      start: Duration(seconds: 566, milliseconds: 0),
      text:
          'この露光方式というものは時代とともに、え、非常に進化してきており、え、さらにさらに高精細な回路に対応する方式へと変わってきています。',
    ),
    SubtitleData(
      start: Duration(seconds: 577, milliseconds: 5),
      text: 'まず、1980年代以前の露光方式は等倍投影露光方式というものでした。',
    ),
    SubtitleData(
      start: Duration(seconds: 583, milliseconds: 50),
      text: 'これは、非常に分かりやすい方式で、フォトマスクと同じサイズの回路を形成するということになってきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 593, milliseconds: 200),
      text: '光を当てた影の部分にそのまま回路を刻んでいくといった感じです。',
    ),
    SubtitleData(
      start: Duration(seconds: 600, milliseconds: 200),
      text: 'その次に登場したものが、縮小投影露光方式、ステップアンドリピート装置という露光方式、露光装置になります。',
    ),
    SubtitleData(
      start: Duration(seconds: 609, milliseconds: 450),
      text:
          'これは、いわゆるフォトマスク のエリアを細かく区切る ことでそのエリアごとに露光、これによって回路の精細化を実現しているという技術です。',
    ),
    SubtitleData(
      start: Duration(seconds: 621, milliseconds: 400),
      text: 'いわゆる、1枚のフォトマスク のサイズを1/4から1/5ほどしたサイズ のみを露光するといった技術になってきます。',
    ),
    SubtitleData(
      start: Duration(seconds: 633, milliseconds: 0),
      text: '説明が分かりにくいので、次のページで図を解説します。',
    ),
    SubtitleData(
      start: Duration(seconds: 638, milliseconds: 5),
      text: 'そして、近年注目されているものがステップアンドスキャン装置という露光方式です。',
    ),
    SubtitleData(
      start: Duration(seconds: 644, milliseconds: 450),
      text:
          'これは、フォトマスクのエリアを細かく区切っているステップアンドリピートとは異なって、細いスリット状の露光エリアというものを用意して、横方向に走査することで露光を実現します。',
    ),
    SubtitleData(
      start: Duration(seconds: 658, milliseconds: 350),
      text: 'では、それらの図式です。',
    ),
    SubtitleData(
      start: Duration(seconds: 661, milliseconds: 550),
      text:
          'まず、ステップアンドリピート方式というものは、画面上部の フォトマスクのエリアをこちら下のウェハーのうちの一部に当てる、これによって高精細な回路をエリアごとに書いていくということを実現した方式です。',
    ),
    SubtitleData(
      start: Duration(seconds: 681, milliseconds: 150),
      text:
          'そして、次にステップアンドスキャナ方式なんですけれども、こちらは、この細かく区切られたエリア、およびフォトマスク のそれぞれのエリアを横方向に、細長いスリットを用いて横方向に走査していくことによって回路の露光を実現しています。',
    ),
    SubtitleData(
      start: Duration(seconds: 700, milliseconds: 500),
      text:
          'ステップアンドリピート以上に細かな回路の走行 というものが可能になりますので、より高精度な回路の記述が可能になるという方式がステップアンドスキャナ方式というものです。',
    ),
    SubtitleData(
      start: Duration(seconds: 714, milliseconds: 100),
      text: 'それでは、え、以上の内容で、フォトリソグラフ それでは次に、現像プラスポストベークという作業についてお伝えしようと思います。',
    ),
    SubtitleData(
      start: Duration(seconds: 726, milliseconds: 500),
      text: 'レジスト現像について、ポストベークという内容をお話します。',
    ),
    SubtitleData(
      start: Duration(seconds: 731, milliseconds: 600),
      text:
          'まず、え、先ほど光を当てたら削れるって話をした、レジストは削れるという話をしたんですけれど、実際のところ露光されたレジストというものは現像液に溶けやすい状態になっています。',
    ),
  ],
);

final List<VideoMetaData> videoMetaDataList = [videoMetaData1, videoMetaData2];
