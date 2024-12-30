class UserMessages < ActiveRecord::Migration[8.0]
  def change
    add_column :messages, :user_id, :int
  end
end
