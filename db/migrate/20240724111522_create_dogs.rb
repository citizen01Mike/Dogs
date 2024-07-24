class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.timestamps null: false
      
      t.string :name null: false, default: ""
    end
  end
end
