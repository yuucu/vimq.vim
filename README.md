
# vimq.vim

csvやtsvのようなテキストファイルに対してsql構文を実行し、データの抽出を行うことが出来ます。  
vimをインターフェースとして、入力を[q](https://github.com/harelba/q)に渡し、結果を受け取り表示します。

## Requirements

[https://github.com/harelba/q](https://github.com/harelba/q)

- for OSX
```
brew install q
```

## Installation

#### vim-plug

```
Plug 'yuucu/vimq.vim'
```

## Usage


#### For Current Buffer

今開いているファイルに対してクエリをかける場合は、ハイフン(`-`)を使用します。


```user.csv
user_id, hp, attack, speed
1, 10, 10, 10
2, 20, 20, 20
3, 30, 30, 30
4, 40, 40, 40

```


##### select * from -


![1](https://user-images.githubusercontent.com/39527561/145523932-5d2b3592-9005-469b-9fdd-21f5d4b7b27e.gif)

```
:Vimq select * from -
```

##### select user_id, hp, attack from - where hp > 20


![2](https://user-images.githubusercontent.com/39527561/145524517-0417427d-169f-4bf9-b3fc-872f243b26d6.gif)

```
:Vimq select user_id, hp, attack from - where hp > 20
```




#### For File


ファイルパスを指定してクエリをかけることも出来ます。

##### select * from ./user.csv


![Uploading 3.gif…]()


```
:Vimq select * from ./path/to/your_file
```


