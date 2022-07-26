class CreateJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals do |t|
      t.string :journal_name
      t.string :journal_link
      t.boolean :read

      t.timestamps
    end
  end
end
