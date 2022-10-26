class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :adress
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
