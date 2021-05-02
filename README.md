# ツール
未整理のツールを置いておく

## upload.sh
aws s3 にアップロードするときに書いたスクリプト  
macなので.DS_Storeファイルを除外する処理をいれた  
確実にもっといい書き方がある。

最初は aws s3 cpを使っていたが、aws s3 syncの--deleteを使いたかったのでこうした。

`[仕様]`  
`sh upload.sh [bucket name]`  
aws s3 の[bucket name]に対して、現在のフォルダにあるファイルを全部同期する。  
upload.sh自体と、recursiveに.DS_Storeを除外する。