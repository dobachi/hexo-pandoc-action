# コードを実行するコンテナイメージ
FROM pandoc/core:latest-ubuntu

RUN apt-get update && \
    apt-get install -y git-core npm

RUN npm install -g hexo-cli
RUN npm install

# アクションのリポジトリからコードファイルをコンテナのファイルシステムパス `/`にコピー
COPY entrypoint.sh /entrypoint.sh

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
