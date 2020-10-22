class AddUniqueEmailAndUsernameIndexToUser < ActiveRecord::Migration[6.0]
  def change
    remove_index(:users, :email)
    remove_index(:users, :username)

    add_index(:users, :email, unique: true)
    add_index(:users, :username, unique: true)
  end
end
