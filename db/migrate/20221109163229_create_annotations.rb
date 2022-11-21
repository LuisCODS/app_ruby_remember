class CreateAnnotations < ActiveRecord::Migration[6.1]
  def change
    create_table :annotations do |t|
      t.text :body
      t.references :friend, foreign_key: true

      t.timestamps
    end
  end
end
