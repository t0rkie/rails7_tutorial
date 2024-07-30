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

5. docker-compose up -d

6.  docker compose exec web rake db:create


# API追加方法


# エラー対応

#### gem追加後のbundle installでこける場合

- dockerイメージを消してmake up
