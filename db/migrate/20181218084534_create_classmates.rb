class CreateClassmates < ActiveRecord::Migration[5.2]
  def change
    create_table :classmates do |t|
      t.string :name
      t.string :motto

      t.timestamps
    end
  end
end
