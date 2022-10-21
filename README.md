# docker-playwrite
Playwrite environment provided by Docker

## quick start

1. XQuartz install

```
brew reinstall --cask xquartz
```

2. Start XQuartz

3. Config setting for XQuartz

環境設定 -> セキュリティ -> 接続を認証 のチェックを外す
環境設定 -> セキュリティ -> ネットワーク・クライアントからの接続を許可 にチェックを入れる

4. Container start

```
docker run -dP --rm --name my -v ${work}:/root/work/ moremagic/docker-playwright

ssh -X -p $(docker port my 22|sed 's/.*://') root@localhost
```
