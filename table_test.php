<?php
$count = 0      // テーブルのカウント
$table_1 = 0    // 一人席のテーブルのカウント
$table_2 = 0    // 二人席のテーブルのカウント
$table_4 = 0    // 四人席のテーブルのカウント

// sqlを持ってくる設定
$pdo = new PDO('mysql:host=localhost;dbname=shitamichi;charset=utf8', 'staff', 'password');

