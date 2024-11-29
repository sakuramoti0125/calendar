#!/bin/bash -xv

# SPDX-FileCopyrightText: 2024 Fumihiro Sakurada
# SPDX-License-Identifier: BSD-3-Clause

# Pythonのユニットテストを実行
python3 test.py

# テスト結果の確認
if [ $? -eq 0 ]; then
    echo "テスト成功"
else
    echo "テスト失敗"
fi

