#SPDX-FileCopyrightText: 2024 Fumihiro Sakurada
#SPDX-License-Identifier: BSD-3-Clause

import calendar

def main():
    print("カレンダーを表示します。年と月を入力してください。")

    try:
        # 年と月を入力
        year = int(input("年を入力してください（例: 2024）: "))
        month = int(input("月を入力してください（例: 11）: "))

        # 入力値が妥当か確認
        if month < 1 or month > 12:
            print("月は1から12の間で入力してください。")
            return

        # カレンダーを生成
        cal = calendar.TextCalendar()
        cal_output = cal.formatmonth(year, month)
        print("\n" + cal_output)

    except ValueError:
        print("無効な入力です。年と月は整数で入力してください。")

if __name__ == "__main__":
    main()

