class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.datetime :last_walked_date

      t.timestamps
    end
  end
end
