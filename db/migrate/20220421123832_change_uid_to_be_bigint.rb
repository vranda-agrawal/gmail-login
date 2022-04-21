class ChangeUidToBeBigint < ActiveRecord::Migration[7.0]
  def change
    change_column :employees, :uid, :bigint
  end
end
