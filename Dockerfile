# ベースイメージを指定
FROM node:14-alpine

# 作業ディレクトリを設定
WORKDIR /app

# 依存関係をコピー
COPY package*.json ./

# 依存関係のインストール
RUN npm install

# ソースコードをコピー
COPY . .

# 開放するポートを指定
EXPOSE 3000

# コンテナ実行時のコマンド
CMD ["npm", "start"]