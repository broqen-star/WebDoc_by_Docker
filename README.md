# 概要
Obsidian で作成したコンテンツをwebサイトで公開するための Docker 環境。
構築をインターネット環境で行い、運用はクローズドネットワークで運用する想定。


# 使っているもの
- Gitea
- Gitea Act Runner
- Postgre
- Nginx
- MkDocs

# 初期設定
- Docker Engine のインストールが完了していること
- git clone https://github.com/broqen-star/WebDoc_by_Docker.git
- cd WebDoc_by_Docker.git
- docker compose build
- docker compose up -d
- web UI の初期セットアップを済ませる
- . generate-env.sh
- docker compose down -v
- docker compose up -d
