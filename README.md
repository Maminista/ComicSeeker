## アプリケーション名
「ComicSeeker」
## URL
https://comicseeker.herokuapp.com/
## アプリケーション概要
自分が好きな漫画を紹介し、それをユーザ同士で共有するWebアプリケーション。
## 作成した経緯
ポートフォリオを作成するにあたって、自分の関心のあるものをコンセプトにしようと決め、私の趣味である料理とサッカー、漫画を読むことの中で、料理に関しては「クックパッド」、サッカーに関しては「スポナビ」など自分が欲しいと思う機能が網羅されているWebアプリケーションが既に存在しているため除外した。<br>
漫画に関しては、自分の知らないマイナーな漫画を探して読むのが好きで、漫画を購入して読むようなサイトはあるが、マイナーな漫画を探すためのツールはあまり存在せず、個人のブログなどをいつも参照していたため、誰でも好きな漫画の紹介ができ、その漫画をユーザ同士で共有できるWebアプリケーションを作成しようと考えた。
## テスト用アカウント
メールアドレス: demouser@gmail.com<br>
パスワード: demodemo1122
## 実装した機能
機&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;能| 目的 | 詳細
-|-|-
登録|gemのdeviseを用いてユーザの管理をする|使用できる機能を、ログインもしくは新規登録により制限する
新規投稿|ユーザが自分の好きな漫画の紹介記事を書くことで<br>ユーザ同士で共有できる|タイトルと紹介したい内容、画像を投稿できる 
漫画一覧|ユーザが投稿した漫画の一覧ページで誰がどの漫画を投稿したが分かる|新規投稿で投稿した漫画のタイトルと画像（主に表紙）、投稿したユーザの名前といいね数が表示される<br>漫画のタイトルから漫画詳細ページ、投稿したユーザの名前から該当ユーザのマイページへ遷移できる
漫画詳細|漫画一覧ページでは表示できなかった投稿のより詳細な内容を表示する|投稿された漫画の詳細ページで投稿内容はもちろん、投稿したユーザやコメント機能を搭載する
投稿編集|投稿した漫画の詳細を変更しやすくする|機能としては新規投稿機能と同じで、再度変更したい内容を入力する<br>投稿したユーザのみ漫画詳細ページやマイページにある編集ボタンから遷移できる
投稿者一覧|登録したユーザの一覧ページで誰がどのくらい投稿したかが分かる|ユーザのプロフィール画像と名前、投稿数、フォローの有無が表示される<br>ユーザの名前から該当ユーザのマイページへ遷移できる
マイページ|自分が投稿した漫画やお気に入り登録した漫画を管理しやすくする|投稿した漫画やお気に入り登録した漫画、フォロワーとフォロー数、ユーザの詳細情報が表示され、各ページへ遷移できる
ユーザ編集|登録したユーザの情報を変更しやすくする|deviseを用いて最初に登録した内容に加えて、ユーザの紹介文やプロフィール画像を設定できる
いいね|投稿された漫画にいいねを押せることにより、他のユーザにどれほど好まれているかが分かりやすくなる|いいねボタンをハートマークにし、押された数をカウントすることで、いいね数を表示する
ランキング|漫画一覧ページよりも視覚的に人気のある漫画を知ることができる|いいね数を統計し上位から表示する
お気に入り|いいね機能と似たものだが、お気に入り登録をすることで、ユーザのマイページで好きな漫画を管理できる|漫画一覧ページやランキングページからお気に入り登録をすることができ、お気に入り登録をした漫画はマイページに表示される
フォロー|コンセプトであるユーザとの共有をさらに明確にするためにフォロー機能をつける|漫画一覧ページや投稿者一覧ページからフォローすることができ、マイページでフォロー数フォロワー数を表示する<br>また、マイページのからフォローフォロワー一覧ページへ遷移できる
検索|ユーザが条件に合う漫画を探しやすくするため|漫画一覧ページに検索フォームを用意し、漫画のタイトルやキーワード入力で検索が可能である
## 実装した機能の操作
### 登録
![ログイン](https://user-images.githubusercontent.com/95627997/154869475-b7f073e3-dd0e-4bfd-88bd-2af0558735c0.gif)
### 新規投稿
![新規投稿](https://user-images.githubusercontent.com/95627997/154869505-69fc1ea9-ea66-404f-b339-a71fe07c3a82.gif)
### 漫画一覧
![漫画一覧ページ](https://user-images.githubusercontent.com/95627997/154869552-ae0e5e30-0060-4b02-804e-e862cf01dce7.gif)
### 漫画詳細
![投稿詳細からユーザページへの遷移とコメント](https://user-images.githubusercontent.com/95627997/154869520-3cf6d079-4c31-41ac-b076-fa13ddc4df24.gif)
### 投稿編集
![投稿編集](https://user-images.githubusercontent.com/95627997/154870225-da6c15dc-a14e-47b6-b85f-682ef6423835.gif)
## 投稿者一覧
![ユーザ一覧ページ](https://user-images.githubusercontent.com/95627997/154869395-17cef27e-b7fa-418c-9424-7133bafd24cc.gif)

## ER図
![ER](https://user-images.githubusercontent.com/95627997/154842553-8f1ad091-b6c4-492f-8a81-181132b55451.jpg)
## 今後実装したい機能
<li> ユーザ同士のコミュニケーション機能 </li>
漫画をユーザ同士で共有するというコンセプトながら、現時点では特定のユーザをフォローする機能とお気に入り機能、投稿へのコメント機能くらいしか実装できていない。そのため、ユーザ同士でコミュニケーションができるチャット機能などを実装したい。<br></br>
<li> レスポンシブ化 </li>
現時点では、PCのウィンドウサイズにしか対応していないため、スマートフォンやタブレットにも対応させたい。<br></br>
<li> デザインの改良 </li>
CSSフレームワークとしてBulmaを使用したが、自分の技術不足で検索フォームやコメント欄、マイページなど簡素な見た目になってしまったため技術力をつけ改良したい。

## 使用したジェムやバージョン
<li>言語</li>
 　Ruby 2.5.1 <br></br>
<li>フレームワーク</li>
 　Rails 5.2.6.2<br></br>
<li>データベース</li>
　開発時: sqlite3<br>
　本番環境: PostgreSQL<br></br>
<li>サーバ</li>
　Heroku: デプロイに使用<br></br>
<li>使用Gem</li>
　Devise: ログイン登録機能の実装に使用<br>
　refile: 画像のアップロードの実装に使用<br>
　Bulma: リッチかつシンプルな仕様にするためにCSSフレームワークとして使用<br></br>
 
## 著作権当
本アプリケーションの漫画紹介をする機能で画像をアップロードをすることができます。<br>
その際、ネット上にある漫画の表紙を無断で使用するのは著作権の侵害に当たる可能性があり、<br>
本アプリケーションでは万が一の場合に備え、「版元ドットコム」の掲載画像を使用しております。<br>
「版元ドットコム」とは、出版社が集まった会員制の団体で、会員の出版社が作った本の普及活動のために、本の情報がWEB上でデータベースとして公開されており、<br> 
「版元ドットコム」に掲載されている本の表紙画像であれば、ブログやSNSなどで漫画を紹介するための画像として自由に使用できます。<br>
また、同様の理由でユーザのプロフィールに使用している画像も「JOYNET」の著作権フリーのアイコンを使用しております。
<li> 版元ドットコム<br>　 https://www.hanmoto.com/bd/search/genre/43/edate/today </li>
<li> JOYNET<br>　https://enjoynet.co.jp/free_snsicon/ </li>
