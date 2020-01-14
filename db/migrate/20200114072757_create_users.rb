class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :group, foreign_key: true
      t.timestamps null: false
    end
  end
end
