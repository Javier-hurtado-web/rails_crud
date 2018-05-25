class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.text :url
      t.integer :article_id
      t.timestamps
    end
  end
end
