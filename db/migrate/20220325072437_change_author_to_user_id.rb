class ChangeAuthorToUserId < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :author
    add_column :posts, :user_id, :integer
    add_index :posts, :user_id
  end
end
