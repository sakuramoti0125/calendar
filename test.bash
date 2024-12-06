#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Fumihiro Sakurada
# SPDX-License-Identifier: BSD-3-Clause

ng() {
    echo "Test failed at line $1"
    exit 1
}

# テストケース 1: 正常なカレンダー出力の確認
expected_output=$(cat <<EOF
   November 2024
Mo Tu We Th Fr Sa Su
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30
EOF
)

out=$(echo "2024 11" |  ./show_calendar 2>&1)
if ! diff <(echo "$out" | sed '/^\s*$/d') <(echo "$expected_output" | sed '/^\s*$/d'); then
    ng "${LINENO}"
fi

# テストケース 2: 月が範囲外の場合
out=$(echo "2024 13" | ./show_calendar 2>&1)
[ "${out}" = "" ] || ng "${LINENO}"

# テストケース 3: 無効な文字列入力
out=$(echo "2024 November" | ./show_calendar 2>&1)
[ "${out}" = "" ] || ng "${LINENO}"

# テストケース 4: 入力が不足している場合
out=$(echo "2024" | ./show_calendar 2>&1)
[ "${out}" = "" ] || ng "${LINENO}"

# テストケース 5: 空入力
out=$(echo " " | show_calendar 2>&1)
[ "${out}" = "" ] || ng "${LINENO}"


echo "All tests passed!"

