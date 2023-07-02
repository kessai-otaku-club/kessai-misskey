# kessai-misskey

misskeyインスタンスを建てる色々がここにはある

## nginx-for-misskey

### 証明書を操作

```sh
sh cert.sh [new|renew|renew-test]
```

#### new

証明書を新規に取得

#### renew

証明書を更新

#### renew-test

`renew` コマンドを走らせるテスト(dry-run)する
