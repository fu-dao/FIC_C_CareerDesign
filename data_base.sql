-- データベース名：shitamichi、ユーザー及びパスワードは教科書通り
drop database if exists shitamichi;
create database shitamichi default character set utf8 collate utf8_general_ci;
grant all on shitamichi.* to 'staff'@'localhost' identifid by 'password';
use shitamichi;

-- テーブル名　hood_menu
-- 左からID、商品名、値段
create table hood_menu(
    id int auto_increment primary key,
    name varchar(200) not null,
    price int not null
);
-- 多分作り直したほうが良さそうなゾーン
insert into hood_menu values(null, 'クッキー', 120);
insert into hood_menu values(null, 'クロワッサン',200);
insert into hood_menu values(null, 'タルト', 400);
insert into hood_menu values(null, 'ケーキ', 400);
insert into hood_menu values(null, 'サンドイッチ', 300);
insert into hood_menu values(null, 'パンケーキ', 500);
insert into hood_menu values(null, 'フレンチトースト', 250);

-- テーブル名　drink_menu
-- 左からID、商品名、M値段、S、L
create table drink_menu{
    id int auto_increment primary key,
    name varchar(200) not null,
    price_M int not null,
    price_S int not null,
    price_L int not null
}

insert into drink_menu values(null, 'アイスレモンティー', 400, -50, 50)
insert into drink_menu values(null, 'アイスミルクティー', 400, -50, 50)
insert into drink_menu values(null, 'アイスティー', 400, -50, 50)
insert into drink_menu values(null, 'レモンティー', 400, -50, 50)
insert into drink_menu values(null, 'ミルクティー', 400, -50, 50)
insert into drink_menu values(null, '紅茶', 400, -50, 50)
insert into drink_menu values(null, 'アイスコーヒー', 350, -50, 50)
insert into drink_menu values(null, 'ホットコーヒー', 350, -50, 50)
insert into drink_menu values(null, 'アイスラテ', 400, -50, 50)
insert into drink_menu values(null, 'ラテ', 400, -50, 50)
insert into drink_menu values(null, 'アイスキャラメルラテ', 450, -50, 50)
insert into drink_menu values(null, 'キャラメルラテ', 450, -50, 50)
insert into drink_menu values(null, 'アイスココア', 450, -50, 50)
insert into drink_menu values(null, 'ココア', 450, -50, 50)
insert into drink_menu values(null, 'ホットチョコレート', 450, -50, 50)
insert into drink_menu values(null, 'オレンジジュース', 300, -50, 50)