class CreateAddUserIdToExpenditures < ActiveRecord::Migration
  def change
    create_table :add_user_id_to_expenditures do |t|
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
