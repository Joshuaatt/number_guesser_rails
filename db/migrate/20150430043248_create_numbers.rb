class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.column :first_number, :integer
      t.column :second_number, :integer
      t.column :guess, :integer
    end
  end
end
