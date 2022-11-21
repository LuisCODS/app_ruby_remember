class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.string :sex

      t.timestamps
    end
  end
end
