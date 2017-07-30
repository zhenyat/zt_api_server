class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.references :category, foreign_key: true
      t.string :name,     null: false
      t.string :title,    null: false
      t.string :abstract, null: false
      t.text :description

      t.timestamps
    end
  end
end
