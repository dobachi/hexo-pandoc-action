# コードを実行するコンテナイメージ
FROM pandoc/core:latest-ubuntu

RUN apt-get update && \
    apt-get install -y git-core

RUN npm install -g hexo

# アクションのリポジトリからコードファイルをコンテナのファイルシステムパス `/`にコピー
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
