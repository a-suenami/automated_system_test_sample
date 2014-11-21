# language: ja

機能: Todo list

  シナリオ: Todoリスト表示
    もし "Todoリストページ"にアクセスする
    ならば "Listing todos"と表示される

  シナリオ: 新規 Todo 登録
    もし "Todoリストページ"にアクセスする
    かつ "New Todo"リンクをクリックする
    かつ "Content"に"This is new todo."と入力する
    かつ "Create Todo"ボタンをクリックする
    ならば "Todo was successfully created."と表示される
    かつ "This is new todo."と表示される
    もし "Back"リンクをクリックする
    ならば "This is new todo."と表示される
