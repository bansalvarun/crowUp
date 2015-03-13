class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
