class CreateSciJournals < ActiveRecord::Migration
  def change
    create_table :sci_journals, id: false do |t|
      t.integer :no, primary_key: true
      t.string :abbreviation
      t.string :title
      t.string :issn
      t.string :subject
    end
  end
end
