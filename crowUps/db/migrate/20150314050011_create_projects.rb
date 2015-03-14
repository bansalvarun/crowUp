class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :prof
      t.text :body
      t.references :field, index: true

      t.timestamps null: false
    end
    add_foreign_key :projects, :fields
  end
end
