class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.integer :votes
      t.integer :order
      t.float :percentage
    end
  end
end
