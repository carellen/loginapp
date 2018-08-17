class AddFirstnameLastnameBirthdateToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string, limit: 200, null: false
    add_column :users, :lastname, :string, limit: 200, null: false
    add_column :users, :birthdate, :date, null: false
  end
end
