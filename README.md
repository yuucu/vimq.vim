
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
```
:Vimq select * from -
```

#### For File
```
:Vimq select * from ./path/to/your_file
```
