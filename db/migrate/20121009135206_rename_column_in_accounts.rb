class RenameColumnInAccounts < ActiveRecord::Migration
  def change
    rename_column :accounts, :name, :login
  end
end
