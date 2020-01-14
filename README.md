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


## groupsテーブル

|Colum|Type|Options|
|-----|----|-------|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :users, through: :users_groups


## messagesテーブル

|Colum|Type|Options|
|-----|----|-------|
|body|text|null: false, foreign_key: true|
|image|string|foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

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
