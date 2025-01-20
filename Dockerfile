# FROM: ベースイメージの指定
FROM node:18.16.0-alpine

ENV LANG C.UTF-8

ENV TZ Asia/Tokyo

# フォルダ指定
WORKDIR /usr/src/app

# pacakge.jsonをコンテナ内にコピーする
COPY package.json package-lock.json .

# npmインストールする
RUN npm install

# react-scriptsをインストールする
RUN npm install react-scripts

# 現在のディレクトリをコンテナ内にコピーする
COPY . .