# モデル名: 単数系(User)
# テーブル名: 複数形(Users)
create_table :users, force: :cascade do |t|
  t.string :name, null: false
  t.string :email, null: false, unique: true
  t.string :password_digest, null: false

  # emailにインデックスを貼る
  t.index :email

  t.timestamps null: false
end
