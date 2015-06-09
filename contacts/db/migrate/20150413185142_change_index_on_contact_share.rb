class ChangeIndexOnContactShare < ActiveRecord::Migration
  def change
    add_index(:contact_shares, [:user_id, :contact_id], unique: true)
    add_index(:contacts, [:email, :user_id], unique: true)

  end
end
