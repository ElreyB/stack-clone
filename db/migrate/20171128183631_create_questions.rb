class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.column :title, :string
      t.column :body, :string
      t.column :net_vote, :integer
      t.timestamps()
    end
  end
end
