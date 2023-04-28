-- データベース名：shitamichi、ユーザー及びパスワードは教科書通り
drop database if exists shitamichi;
create database shitamichi default character set utf8 collate utf8_general_ci;
grant all on shitamichi.* to 'staff'@'localhost' identified by 'password';
use shitamichi;

-- テーブル名　food_menu
create table food_menu(
    id int auto_increment primary key,  -- ID（null）
    name varchar(200) not null,         -- 商品名（200文字まで）
    price int not null,                 -- 値段
    text varchar(32767) not null        -- 説明（32767文字まで）
);
insert into food_menu values(null, 'クッキー', 120, 'test');
insert into food_menu values(null, 'クロワッサン',200, 'test');
insert into food_menu values(null, 'タルト', 400, 'test');
insert into food_menu values(null, 'ケーキ', 400, 'test');
insert into food_menu values(null, 'サンドイッチ', 300, 'test');
insert into food_menu values(null, 'パンケーキ', 500, 'test');
insert into food_menu values(null, 'フレンチトースト', 250, 'test');

-- テーブル名　food_menu_img
create table food_menu_img(
    id int auto_increment primary key,  -- ID(null)
    img longblob not null,              -- 画像データ（4GB）
    name varchar(200) not null          -- 画像名
);
-- ENGINE = InnoDB;とかついてたけどよく分かりません🙃

-- テーブル名　drink_menu
-- S価格はhtmlで「-」とかつけといてください
create table drink_menu(
    id int auto_increment primary key,  -- ID（null）
    name varchar(200) not null,         -- 商品名（200文字まで）
    price_M int not null,               -- M価格
    price_S int not null,               -- S価格（-xx）
    price_L int not null,               -- L価格（+xx）
    text varchar(32767) not null        -- 説明（32767文字まで）
);
insert into drink_menu values(null, 'アイスレモンティー', 400, 50, 50, 'test');
insert into drink_menu values(null, 'アイスミルクティー', 400, 50, 50, 'test');
insert into drink_menu values(null, 'アイスティー', 400, 50, 50, 'test');
insert into drink_menu values(null, 'レモンティー', 400, 50, 50, 'test');
insert into drink_menu values(null, 'ミルクティー', 400, 50, 50, 'test');
insert into drink_menu values(null, '紅茶', 400, 50, 50, 'test');
insert into drink_menu values(null, 'アイスコーヒー', 350, 50, 50, 'test');
insert into drink_menu values(null, 'ホットコーヒー', 350, 50, 50, 'test');
insert into drink_menu values(null, 'アイスラテ', 400, 50, 50, 'test');
insert into drink_menu values(null, 'ラテ', 400, 50, 50, 'test');
insert into drink_menu values(null, 'アイスキャラメルラテ', 450, 50, 50, 'test');
insert into drink_menu values(null, 'キャラメルラテ', 450, 50, 50, 'test');
insert into drink_menu values(null, 'アイスココア', 450, 50, 50, 'test');
insert into drink_menu values(null, 'ココア', 450, 50, 50, 'test');
insert into drink_menu values(null, 'ホットチョコレート', 450, 50, 50, 'test');
insert into drink_menu values(null, 'オレンジジュース', 300, 50, 50, 'test');

-- テーブル名　drink_menu_img
create table drink_menu_img(
    id int auto_increment primary key,  -- ID(null)
    img longblob not null,              -- 画像データ（4GB）
    name varchar(200) not null          -- 画像名
);
-- ENGINE = InnoDB;とかついてたけどよく分かりません🙃

-- テーブル名　table_set_1
-- 一人席用テーブル
create table table_set_1(
    id int auto_increment primary key,  -- ID（null）
    reserve int not null                -- 予約されているかを判別する(0：予約なし、1：予約あり)
);
insert into table_set_1 values(null, 0);
insert into table_set_1 values(null, 0);
insert into table_set_1 values(null, 0);
insert into table_set_1 values(null, 0);
insert into table_set_1 values(null, 0);
-- テーブル名　table_set_2
-- 二人席用テーブル
create table table_set_2(
    id int auto_increment primary key,  -- ID（null）
    reserve int not null                -- 予約されているかを判別する(0：予約なし、1：予約あり)
);
insert into table_set_2 values(null, 0);
insert into table_set_2 values(null, 0);
insert into table_set_2 values(null, 0);

-- テーブル名　teble_set_4
-- ４人席用テーブル
create table table_set_4(
    id int auto_increment primary key,  -- ID（null）
    reserve int not null                -- 予約されているかを判別する(0：予約なし、1：予約あり)
);
insert into table_set_4 values(null, 0);
insert into table_set_4 values(null, 0);
insert into table_set_4 values(null, 0);
insert into table_set_4 values(null, 0);

-- テーブル名 news
create table news(
    id int auto_increment primary key,  -- ID（null）
    title varchar(200) not null,        -- タイトル（200文字まで）
    icon_number int not null,           -- アイコン、とりあえず数字にしてますがめんどくさかったら文字に変えてください
    text varchar(32767) not null        -- 本文（32767文字まで）
);