class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,         null: false
      t.text       :text,         null: false
      t.integer    :category_id,  null: false
      t.integer    :quality_id,   null: false  
      t.integer    :postage_id,   null: false  
      t.integer    :shipping_id,  null: false
      t.integer    :day_id,       null: false
      t.integer    :price,        null: false
      t.references :user,         null: false,  foreign_key: true
      t.timestamps
    end
  end
end
