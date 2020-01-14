# chat-space DB設計

## usersテーブル

|Colum|Type|Options|
|-----|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|

### Association
- has_many :messages
- has_many :groups, through: :users_groups
- has_many :users_group

## groupsテーブル

|Colum|Type|Options|
|-----|----|-------|
|name|string|null: false|

### Association
- has_many :users, through: :users_groups
- has_many :users_groups
- has_many :messages


## messagesテーブル

|Colum|Type|Options|
|-----|----|-------|
|body|text|
|image|string|
|group|refarences|null: false, foreign_key: true|
|user|refarences|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group


## users_groupsテーブル

|Colum|Type|Options|
|-----|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group
