class AddFieldToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :email, :string
    add_column :employees, :uid, :integer
    add_column :employees, :provider, :text
  end
end
