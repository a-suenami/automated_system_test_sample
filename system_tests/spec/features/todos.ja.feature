# language: ja

機能: Todo list

  シナリオ: Todoリスト表示
    もし "Todoリスト"ページを開く
    ならば "Listing todos"と表示される

  シナリオ: 新規 Todo 登録
    もし "Todoリスト"ページを開く
    かつ "New Todo"リンクをクリックする
    かつ "内容"に"新しいTodo"と入力する
    かつ "Create Todo"ボタンをクリックする
    ならば "Todo was successfully created."と表示される
    かつ "新しいTodo"と表示される
    もし "Back"リンクをクリックする
    ならば "This is new todo."と表示される
