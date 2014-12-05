# language: ja

機能: Todo list

  シナリオ: Todoリスト表示
    もし "Todoリスト"ページを開く
    ならば "Listing todos"と表示される

  シナリオ: 新規 Todo 登録
    もし "Todoリスト"ページを開く
    かつ "新規作成"リンクをクリックする
    かつ "内容"に"新しいTodo"と入力する
    かつ "Category"プルダウンから"work"を選択する
    かつ "Priority"ラジオボタンから"high"を選択する
    かつ "Tags"チェックボックスから"guest, meeting"を選択してチェックする
    かつ "Alert"にチェックする
    かつ "Todo登録"ボタンをクリックする
    ならば "新しいTodoを登録しました。"と表示される
    かつ "新しいTodo"と表示される
    もし "一覧へ戻る"リンクをクリックする
    ならば "新しいTodo"と表示される
