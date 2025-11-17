Obsidian で作成したコンテンツをwebサイトで公開するための Docker 環境。
構築をインターネット環境で行い、運用はクローズドネットワークで運用する想定。

使用するコンテナ
- Gitea
- Gitea Act Runner
- Postgre
- Nginx

初期設定
- git clone
- docker compose build
- . generate-env.sh
- docker compose up -d
- web UI の初期セットアップを済ませる
