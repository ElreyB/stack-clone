class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.column :user_id, :integer
      t.column :votable_id, :integer
      t.column :votable_type, :string
    end
  end
end
