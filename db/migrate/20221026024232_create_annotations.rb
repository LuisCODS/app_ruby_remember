class CreateAnnotations < ActiveRecord::Migration[6.1]
  def change
    create_table :annotations do |t|
      t.text :body

      # https://youtu.be/vh3ir1XWfW0?list=PLe3LRfCs4go-mkvHRMSXEOG-HDbzesyaP&t=472
      # uncomment to create associations with Friend entity
      # t.references: friend, index: true

      t.timestamps
    end
  end
end
