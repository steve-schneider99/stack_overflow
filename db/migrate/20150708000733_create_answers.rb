class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :answer, :string
      t.column :question_id, :integer
      t.column :user_id, :integer
    end
  end
end
