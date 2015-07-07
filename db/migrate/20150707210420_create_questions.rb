class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :question, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
