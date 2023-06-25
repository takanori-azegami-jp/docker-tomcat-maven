# docker-tomcat-maven

Docker マルチビルドステージで Maven でビルドした War ファイルを Tomcat で実行する環境を構築する

## 環境

- Windows11 Pro 22H2
- Rancher Desktop 1.8.1
- Docker version 23.0.1-rd, build 393499b

## ビルド

```bash
# Dockerコンテナ作成
$ docker-compose up -d --build
```

## ブラウザで接続

- http://localhost:8080/myapp/

## 参考

- [Docker のマルチステージビルド機能でコンテナ上の Maven ビルド](https://qiita.com/zaki-lknr/items/1d7ab5d92359d30dfac0)
