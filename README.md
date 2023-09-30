# ツール / スクリプト
何か書きたいだけ

<!-- AWS -->
## AWS関連

### s3/upload.sh
aws s3 にアップロードするときに書いたスクリプト  
macなので.DS_Storeファイルを除外する処理をいれた  
確実にもっといい書き方がある。

最初は aws s3 cpを使っていたが、aws s3 syncの--deleteを使いたかったのでこうした。

[仕様]
```
sh upload.sh
```
aws s3 の[bucket name]に対して、現在のフォルダにあるファイルを全部同期する。  
[bucket name]は、実行時のパスのカレントディレクトリ名を勝手に使う
(カレントディレクトリがaaaであれば、bucket nameはaaaとして実行
upload.sh自体と、recursiveに.DS_Storeを除外する。

### ec2/start.sh|stop.sh
一覧出してインスタンスID指定で起動と停止できる

### ec/billing.sh
金。ちなみにdateはMacの仕様なのでcentとかなら変える必要あり。いつかかく

<!-- 単なるスクリプト -->
## 単なるスクリプト
### fizzbuzz
fizzbuzz関連で何かあれば

<!-- AI -->
## AI
### Open AI

リファレンス
https://platform.openai.com/docs/api-reference
