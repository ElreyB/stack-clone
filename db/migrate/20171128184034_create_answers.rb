class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.column :body, :string
      t.column :net_vote, :integer
      t.timestamps()
    end
  end
end
