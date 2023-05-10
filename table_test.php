<?php
$table_1 = false;    // 一人席のテーブルの確認
$table_2 = false;    // 二人席のテーブルの確認
$table_4 = false;    // 四人席のテーブルの確認
// sqlを持ってくる設定
$pdo = new PDO('mysql:host=localhost;dbname=shitamichi;charset=utf8', 'staff', 'password');

// 一人席のデータを持ってくる
foreach($pdo -> query('select * from table_set_1') as $row) {
    // 席が予約されていないかを確認する
    if ($row['reserve'] == 0) {
        // 一つでも予約が空いていたら正を入れる
        $table_1 = true;
    }
};

// 二人席のデータを持ってくる
foreach($pdo -> query('select * from table_set_2') as $row) {
    // 席が予約されていないかを確認する
    if ($row['reserve'] == 0) {
        // 一つでも予約が空いていたら正を入れる
        $table_2 = true;
    }
};

// 四人席のデータを持ってくる
foreach($pdo -> query('select * from table_set_4') as $row) {
    // 席が予約されていないかを確認する
    if ($row['reserve'] == 0) {
        // 一つでも予約が空いていたら正を入れる
        $table_4 = true;
    }
};

if ($table_1 == true) {
    echo '<input type="checkbox">一人席</inout>';
};


if ($table_2 == true) {
    echo '<input type="checkbox">二人席</inout>';
};


if ($table_4 == true) {
    echo '<input type="checkbox">四人席</inout>';
}
?>