# README

# 環境構築
Docker × Rails × PostgreSQL

1. プロジェクトのディレクトリ作成

2. 以下ファイルを作成
- Dockerfile
- docker-compose.yml
- Gemfile
- Gemfile.lock

3. docker compose run --rm web rails new . --force --no-deps --database=postgresql

4. docker compose build

5. docker compose up -d

6. docker compose exec web rake db:create

# DB周り
## PgAdmin接続情報
- host name: db
- port: 5432
- database: postgres
- username: postgres
- password: password


## DBリセット
```
docker compose exec web rails db:migrate:reset
```



# API追加方法
適当なAPI用のコントローラを追加し、jsonで返すようにするとAPIの振る舞いになる。

# セキュアパスワード
1. Userモデルにpassword_digestカラムを追加
2. GEM bcryptを追加
3. has_secure_passwordメソッドがUserモデル内で使えるようになる。また、モデルに仮想的な属性passwordとpassword_confirmationが自動で付与される。


# SSL対応
1. config/production.rbのforce_sslをtrueに
2. config/puma.rbの設定


# エラー対応

#### gem追加後のbundle installでこける場合

- dockerイメージを消してmake up
