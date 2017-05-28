class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.string :name
      t.string :section
      t.string :problem

      t.timestamps
    end
  end
end
