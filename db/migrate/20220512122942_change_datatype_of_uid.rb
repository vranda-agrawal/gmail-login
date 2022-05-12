class ChangeDatatypeOfUid < ActiveRecord::Migration[7.0]
  def change
    change_column :employees, :uid, :string
  end
end
