class AddUserIdToExpenditure < ActiveRecord::Migration
  def change
    add_column :expenditures, :user, :reference
  end
end
