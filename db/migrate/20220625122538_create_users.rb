class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users,id:false do |t|
      t.text :name,null:false
      t.text :avatar,null:false
      t.text :uid,null:false
      t.timestamps
    end
    execute "ALTER TABLE users ADD PRIMARY KEY (uid);"
  end
end
