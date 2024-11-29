# SPDX-FileCopyrightText: 2024 Fumihiro Sakurada
# SPDX-License-Identifier: BSD-3-Clause

import calendar

def main():
    try:
        # 入力を促さずに一行で年と月を取得
        input_data = input().strip()
        year, month = map(int, input_data.split())

        # 入力値が妥当か確認
        if month < 1 or month > 12:
            print("月は1から12の間で入力してください。")
            return

        # カレンダーを生成
        cal = calendar.TextCalendar()
        cal_output = cal.formatmonth(year, month)
        print("\n" + cal_output)

    except ValueError:
        print("無効な入力です。年と月は整数で、スペースで区切って入力してください。")
    except Exception as e:
        print(f"エラーが発生しました: {e}")

if __name__ == "__main__":
    main()

