class Project < ActiveRecord::Base
  belongs_to :field
end
class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :prof
      t.text :body
 
      t.references :field, index: true
 
      t.timestamps null: false
    end
  end
end