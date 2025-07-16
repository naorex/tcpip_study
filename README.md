# Linuxで動かしながら学ぶTCP/IPネットワーク入門

- [サポートページ(GitHub)](https://github.com/momijiame/linux-tcpip-book)
- [読書メモ](https://naorex0123.notion.site/Linux-TCP-IP-1668cdc694c5808d960be4d49bc0f80d)

以下、Docker で学習環境を用意するためのコマンド（付属の Dockerfile）

## ビルドコマンド

イメージをビルド（好きな名前でOK）

```bash
docker build -t tcpip .
```

## 特権と cap 付きで起動

```bash
docker run --rm -it --cap-add=SYS_ADMIN --privileged tcpip bash
```
