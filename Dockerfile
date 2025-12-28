# 1. OpenJDK 17 イメージを選択
FROM openjdk:17-jdk-slim

# 2. 作業ディレクトリを作成
WORKDIR /app

# 3. 必要なファイルをコピー
COPY . .

# 4. 必要な権限を設定（もし必要なら）
RUN chmod +x startup.sh

# 5. サーバーを起動するコマンド
CMD ["./startup.sh"]
