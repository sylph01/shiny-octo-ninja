class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :answer
      t.text :message
      t.binary :image
      t.string :content_type

      t.timestamps
    end
  end
end
