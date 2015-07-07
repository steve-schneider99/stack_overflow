class CorrectUsersHashSpelling < ActiveRecord::Migration
  def change
    remove_column(:users, :pasword_hash)
    add_column(:users, :password_hash, :string)
  end
end
