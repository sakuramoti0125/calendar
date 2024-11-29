#!/usr/bin/python3 -xv
#SPDX-FileCopyrightText: 2024 Fumihiro Sakurada
#SPDX-License-Identifier: BSD-3-Clause

import unittest
from io import StringIO
import sys

# テスト対象のプログラム
def main():
    print("カレンダーを表示します。年と月を入力してください。")
    try:
        year = int(input("年を入力してください: "))
        month = int(input("月を入力してください: "))
        if 1 <= month <= 12:
            print(f"{year}年{month}月のカレンダーを表示します。（ここにカレンダー表示）")
        else:
            print("月は1から12の間で入力してください。")
    except ValueError:
        print("年と月は整数で入力してください。")

# シンプルなテストコード
class TestCalendarProgram(unittest.TestCase):
    def test_valid_input(self):
        """正常な入力のテスト"""
        input_data = "2024\n11\n"
        expected_output = (
            "カレンダーを表示します。年と月を入力してください。\n"
            "年を入力してください: 月を入力してください: 2024年11月のカレンダーを表示します。（ここにカレンダー表示）\n"
        )
        self._run_test(input_data, expected_output)

    def test_invalid_month(self):
        """月が無効な場合のテスト"""
        input_data = "2024\n13\n"
        expected_output = (
            "カレンダーを表示します。年と月を入力してください。\n"
            "年を入力してください: 月を入力してください: 月は1から12の間で入力してください。\n"
        )
        self._run_test(input_data, expected_output)

    def _run_test(self, input_data, expected_output):
        """簡易的に標準入力と出力をテスト"""
        sys.stdin = StringIO(input_data)  # 入力をモック
        output = StringIO()
        sys.stdout = output  # 出力をモック
        main()  # テスト対象関数を実行
        sys.stdin = sys.__stdin__  # 標準入力を元に戻す
        sys.stdout = sys.__stdout__  # 標準出力を元に戻す
        self.assertEqual(output.getvalue(), expected_output)  # 出力を検証

if __name__ == "__main__":
    unittest.main()

