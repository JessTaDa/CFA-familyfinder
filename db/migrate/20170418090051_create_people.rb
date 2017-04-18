class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.references :user, foreign_key: true
      t.string :relation
      t.string :name
      t.integer :age
      t.string :town
      t.text :story
      t.boolean :missing

      t.timestamps
    end
  end
end
