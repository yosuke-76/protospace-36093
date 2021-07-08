＃テーブル設計

##usersテーブル

| Column      | Type     | Options     |
|-------------| -------- | ------------|
| email       | string   | null: false |
| password    | string   | null: false |
| name        | string   | null: false |
| profile     | text     | null: false |
| occupation  | text     | null: false |
| position    | text     | null: false |

###Association
- has_many :comments
- has_many :prototypes

##commentsテーブル

| Column    | Type       | Options  
| --------- | ---------- | --------------
| text      | text       | null: false
| user      | references | null: false, foreign_key: true
| prototype | references | null: false, foreign_key: true

###Association
- belongs_to :user
- belomgs_to :prototype

##prototypeテーブル

| Column      | Type                   | Options
| ----------- | ---------------------- | ---------- 
| title       | string                 | null: false
| catch_copy  | text                   | null: false
| concept     | text                   | null: false
| user        | references             | null: false, foreign_key: true

###Assoziationテーブル
- belongs_to :user
- has_many :comments