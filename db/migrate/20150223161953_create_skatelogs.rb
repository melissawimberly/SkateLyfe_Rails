class CreateSkatelogs < ActiveRecord::Migration
  def change
    create_table :skatelogs do |t|
      t.text :title, null: false
      t.text :seshtime, null: false
      t.text :tricks, null: false
      t.text :description
      t.references :user
      t.timestamps
    end
  end
end
