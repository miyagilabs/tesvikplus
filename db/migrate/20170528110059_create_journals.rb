class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals, id: false do |t|
      t.string :title, primary_key: true
      t.string :issn
      t.float :score
      t.float :payout
    end
  end
end
