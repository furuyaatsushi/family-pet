# Family-Pet

ご覧いただきありがとうございます。
<br>このアプリケーションは里親を募集したり希望することで、行き場のないペットを求めている人たちに橋渡ししてあげるためのツールです。<br>
この名前は家族とペットを繋いであげたいという思いから、「Family-Pet」と名付けさせていただきました。<br>

私はスクールに通って日々プログラミング学習をしております。<br>
スクールの最終課題に入る前に、復習やアウトプットのほかまだやったことのない機能にチャレンジするためにこのアプリを作りました。

現在このアプリケーションは公開していません。

# プレビュー
募集一覧画面<br>
<img width="735" alt="スクリーンショット 2019-12-26 1.17.09.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/433361/19a44588-eb4a-6fb2-1e12-bf933d6fd8a8.png">

ダイレクトメッセージ画面
<img width="739" alt="スクリーンショット 2019-12-26 1.20.05.png" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/433361/347e06ec-b101-718d-931b-81b9e4874dd2.png">

# 開発環境

Ruby on Rails '5.0.7.2'<br>
mysql2 '>= 0.3.18', '< 0.6.0'

# 使い方

ユーザーは登録をすると、里親募集の投稿をしたり募集している案件に対してメッセージを送ることができます。<br>
ログインした状態でなくても、募集の一覧画面を見たり検索することはできますが、投稿をしたり募集に対してメッセージを送ることはできません。<br>
募集には都道府県を登録し、里親希望者とメッセージのやり取りをして直接受け渡してもらう形となっています。

# 工夫した点

* 都道府県、動物の種類、犬種・猫種の条件を指定して絞り込みをできるようにしました。
* ダイレクトメッセージに非同期通信を実装したとともに、画面を工夫し某メッセージアプリのような視覚的にやり取りがわかりやすい見た目にした。

# 改善点

* [メッセージを開始する]というボタンを押すとそこからメッセージのやりとりができるようにしたのですが、同じ人とのやりとりが複数作成されてしまう。
* メッセージのやりとり一覧画面で、[相手の名前]とのメッセージ のように表示させたかったが、うまくできなかった。