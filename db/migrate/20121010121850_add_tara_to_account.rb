class AddTaraToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :tara, :string
  end
end
