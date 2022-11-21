class RenameUsersToUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :dreams, :users_id, :user_id
    rename_column :reservations, :users_id, :user_id
    rename_column :reservations, :dreams_id, :dream_id
  end
end
