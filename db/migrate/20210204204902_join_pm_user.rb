class JoinPmUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :private_messages, :user, foreign_key: true
  end
end
