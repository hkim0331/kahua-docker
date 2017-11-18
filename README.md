# Kahua-docker

## install

```sh
$ mkdir srv opt
$ (cd /srv && git clone https://github.com/kahua/Kahua.git)
$ make build    ;; make hkim0331/kahua
$ make run      ;; starts kahua.
```
kahua starts at localhost:8888

## FIXME

* docker stop でコンテナ止めると site/socket の下とか、
  run の下とかに残骸が残る。=> make run で前処理するか。

* repl 上で動いているわけではないので、
  サイトの再読み込みはコンテナの再起動になるってまじ？
  それ、大変だ。止めるのに10数秒かかる。

---
hiroshi . kimura . 0331 @ gmail . com

