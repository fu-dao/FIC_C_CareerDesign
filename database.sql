-- データベース名：bakery、ユーザー及びパスワードは教科書通り
drop database if exists bakery;
create database bakery default character set utf8 collate utf8_general_ci;
grant all on bakery.* to 'staff'@'localhost' identified by 'password';
use bakery;

-- テーブル名　food_menu
create table food_menu(
    food_id int auto_increment primary key,  -- ID（null）
    name varchar(200) not null,              -- 商品名（200文字まで）
    price int not null,                      -- 値段
    text varchar(32767) not null,            -- 説明（32767文字まで）
    imgpass varchar(200) not null            -- 画像パス
);

-- テーブル名　drink_menu
-- S価格はhtmlで「-」とかつけといてください
create table drink_menu(
    drink_id int auto_increment primary key,  -- ID（null）
    name varchar(200) not null,               -- 商品名（200文字まで）
    price int not null,                       -- 値段
    text varchar(32767) not null,             -- 説明（32767文字まで）
    imgpass varchar(200) not null             -- 画像パス
);
-- テーブル名　table_set_1
-- 一人席用テーブル
create table table_set_1(
    id int auto_increment primary key,  -- ID（null）
    tbl_nam int not null,               -- 席番号
    tbl_date date not null,             -- 日付
    tbl_time int not null,              -- 時間
    name varchar(200) not null          -- 予約者の名前
);

-- テーブル名　table_set_2
-- 二人席用テーブル
create table table_set_2(
    id int auto_increment primary key,  -- ID（null）
    tbl_nam int not null,               -- 席番号
    tbl_date date not null,             -- 日付
    tbl_time int not null,              -- 時間
    name varchar(200) not null          -- 予約者の名前
);

-- テーブル名　teble_set_4
-- ４人席用テーブル
create table table_set_4(
    id int auto_increment primary key,  -- ID（null）
    tbl_nam int not null,               -- 席番号
    tbl_date date not null,             -- 日付
    tbl_time int not null,              -- 時間
    name varchar(200) not null          -- 予約者の名前
);

-- テーブル名 news
create table news(
    id int auto_increment primary key,  -- ID（null）
    title varchar(200) not null,        -- タイトル（200文字まで）
    icon_number int not null,           -- アイコン、とりあえず数字にしてますがめんどくさかったら文字に変えてください
    text varchar(32767) not null,       -- 本文（32767文字まで）
    imgpass varchar(200) not null       -- 画像パス
);

-- テーブル名　user_table
create table user_table(
    id int auto_increment primary key,  -- ID（null）
    name varchar(200) not null,         -- ユーザー名
    mail varchar(200) not null          -- メールアドレス
);

-- テーブル名　user_reserve
create table user_reserve(
    id int auto_increment primary key,  -- ID（null）
    name varchar(200) not null,         -- 名前
    mail varchar(200) not null          -- メールアドレス
);

-- テーブル名　purchaser
create table purchaser(
    purchaser_id int auto_increment primary key,    -- ID（null）
    name varchar(200) not null,                     -- 名前
    mail varchar(200) not null                      -- メールアドレス
);

-- テーブル名　food_reserve_tbl
create table food_reserve_tbl(
    food_id int,                        -- フードメニューのID
    purchaser_id int,                   -- 購入者テーブルのID
    -- 複合キー
    PRIMARY KEY(food_id, purchaser_id),
    -- 以下外部キー
    FOREIGN KEY (food_id) REFERENCES food_menu(food_id) on delete cascade,
    FOREIGN KEY (purchaser_id) REFERENCES purchaser(purchaser_id)
);

-- テーブル名　drink_reserve_tbl
create table drink_reserve_tbl(
    drink_id int,                       -- ドリンクテーブルのID
    purchaser_id int,                   -- 購入者テーブルのID
    -- 複合キー
    PRIMARY KEY(drink_id, purchaser_id),
    -- 以下外部キー
    FOREIGN KEY (drink_id) REFERENCES drink_menu(drink_id) on delete cascade,
    FOREIGN KEY (purchaser_id) REFERENCES purchaser(purchaser_id)
);