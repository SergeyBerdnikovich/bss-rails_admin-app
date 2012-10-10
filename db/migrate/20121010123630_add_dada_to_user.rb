class AddDadaToUser < ActiveRecord::Migration
  def change
    add_column :users, :dada, :string
  end
end
