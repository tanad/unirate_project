class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :country
      t.string :string
      t.string :city
      t.string :address
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :schools, :user_id
  end
end
