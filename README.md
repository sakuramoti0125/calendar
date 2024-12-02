## このリポジトリーについて
大学の講義で作成したレポジトリーです。

### クローン方法
- リポジトリをクローンします。
    ```bash
    $ git clone https://github.com/sakuramoti0125/calendar.git
    ```

### calendarコマンド 
このモジュールは、カレンダー関連の操作を行うための関数やクラスを提供します。

- 使用例
    ```python
    cal = calendar.TextCalendar()
    cal_output = cal.formatmonth(year, month)
    ```
TextCalendar() クラスでカレンダーオブジェクトを作成し、そのオブジェクトを使って特定の月のカレンダーをフォーマットします。
formatmonthでは、指定されたyearとmonthのカレンダーを文字列として生成します。 

#### 概要
- 入力した年、月のカレンダーを表示する。

#### 対応している文字
- 整数の数字（対応していない文字を入力するとエラーがでます）

##### 実行方法
1. 実行権限を与えてください。 
    ```
    $ chmod +x show_calendar.py
    ```

2. プログラムを実行するには、以下のコマンドを入力します。
    ```
    $ python3 show_calendar.py
    (例)2024 11
    ```
    プログラム実行後(例)のように 年 月 を入力してください。

3. パイプして実行する場合
    ```
    & echo "2024 11" | python3 show_calendar.py
    ```

##### 実行例

```
       November 2024
    Mo Tu We Th Fr Sa Su
                 1  2  3
     4  5  6  7  8  9 10
    11 12 13 14 15 16 17
    18 19 20 21 22 23 24
    25 26 27 28 29 30
```

### 動作環境
#### 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.7~3.12

#### テスト環境
- Ubuntu 24.04.1 LTS

### ライセンス
このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
詳しくは [LICENSE](LICENSE) をご覧ください。

### Copyright
© 2024 Fumihiro Sakurada
