class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :user
      t.string :private_mail

      t.timestamps
    end
    add_index :accounts, :user_id
  end
end
