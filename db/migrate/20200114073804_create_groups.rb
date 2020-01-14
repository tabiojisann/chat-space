class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
