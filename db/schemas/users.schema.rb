create_table :users, force: :cascade do |t|
  t.string :name, null: false
  t.string :email, null: false

  t.timestamps null:false
end
