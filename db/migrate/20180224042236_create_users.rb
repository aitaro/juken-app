class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :year
      t.string :studytype
      t.string :university
      t.string :deviation
      t.string :time
      t.string :layout
      t.string :exercise

      t.timestamps
    end
  end
end
