# FROM: ベースイメージの指定
FROM node:18.16.0-alpine

# 
WORKDIR /usr/src/app

# 現在のディレクトリをコンテナ内にコピーする
COPY . /usr/src/app

# pacakge.jsonをコンテナ内にコピーする
COPY package.json //usr/src/app

# npmインストールする
RUN npm install

# react-scriptsをインストールする
RUN npm install react-scripts