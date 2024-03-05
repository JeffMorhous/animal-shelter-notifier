class ChangeLastWalkedDateToLastWalkedAt < ActiveRecord::Migration[7.1]
  def change
    rename_column :dogs, :last_walked_date, :last_walked_at
  end
end
