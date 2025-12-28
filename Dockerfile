# ベースとなるイメージを指定
FROM openjdk:17-jdk

# 作業ディレクトリを作成
WORKDIR /app

# ソースコード（必要なファイル）をコンテナにコピー
COPY . .

# Eaglercraftサーバーをビルド・セットアップするコマンド
RUN chmod +x startup.sh

# サーバー起動コマンド
CMD ["./startup.sh"]
